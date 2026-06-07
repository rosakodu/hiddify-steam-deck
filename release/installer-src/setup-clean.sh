#!/bin/bash
# Clean install entrypoint. Desktop Mode prefers the GTK wizard; SSH/TTY runs install.sh.
set -e

export HIDDIFY_CLEAN_INSTALL=1

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
WORK_DIR="/tmp/hiddify-wizard"
LAUNCH_LOG="/tmp/hiddify-wizard-launch.log"
DECK_UID="${DECK_UID:-1000}"
DECK_USER="${DECK_USER:-deck}"
DECK_HOME="/home/$DECK_USER"

detect_gui_session() {
    if [ -n "${DISPLAY:-}" ] || [ -n "${WAYLAND_DISPLAY:-}" ]; then
        return 0
    fi

    if [ -S "/run/user/$DECK_UID/wayland-0" ]; then
        export XDG_RUNTIME_DIR="/run/user/$DECK_UID"
        export WAYLAND_DISPLAY="wayland-0"
        return 0
    fi

    if [ -S "/tmp/.X11-unix/X0" ]; then
        export DISPLAY=":0"
        export XDG_RUNTIME_DIR="/run/user/$DECK_UID"
        return 0
    fi

    return 1
}

prepare_wizard_dir() {
    rm -rf "$WORK_DIR"
    mkdir -p "$WORK_DIR"
    cp -a "$SCRIPT_DIR/." "$WORK_DIR/"
}

prepare_gui_env() {
    export XDG_RUNTIME_DIR="${XDG_RUNTIME_DIR:-/run/user/$DECK_UID}"
    export DBUS_SESSION_BUS_ADDRESS="${DBUS_SESSION_BUS_ADDRESS:-unix:path=$XDG_RUNTIME_DIR/bus}"
    if [ -z "${XAUTHORITY:-}" ]; then
        XAUTH_FOUND="$(ls "$XDG_RUNTIME_DIR"/xauth_* 2>/dev/null | head -1 || true)"
        export XAUTHORITY="${XAUTH_FOUND:-$DECK_HOME/.Xauthority}"
    fi
}

launch_wizard() {
    : > "$LAUNCH_LOG" 2>/dev/null || true
    prepare_wizard_dir
    prepare_gui_env

    if [ "$EUID" -eq 0 ]; then
        sudo -u "$DECK_USER" -E \
            HOME="$DECK_HOME" USER="$DECK_USER" HIDDIFY_CLEAN_INSTALL=1 \
            DISPLAY="${DISPLAY:-}" WAYLAND_DISPLAY="${WAYLAND_DISPLAY:-}" \
            XDG_RUNTIME_DIR="$XDG_RUNTIME_DIR" DBUS_SESSION_BUS_ADDRESS="$DBUS_SESSION_BUS_ADDRESS" \
            XAUTHORITY="$XAUTHORITY" \
            python3 "$WORK_DIR/wizard.py" "$WORK_DIR" >>"$LAUNCH_LOG" 2>&1 &
    else
        HOME="${HOME:-$DECK_HOME}" USER="${USER:-$DECK_USER}" HIDDIFY_CLEAN_INSTALL=1 \
            DISPLAY="${DISPLAY:-}" WAYLAND_DISPLAY="${WAYLAND_DISPLAY:-}" \
            XDG_RUNTIME_DIR="$XDG_RUNTIME_DIR" DBUS_SESSION_BUS_ADDRESS="$DBUS_SESSION_BUS_ADDRESS" \
            XAUTHORITY="$XAUTHORITY" \
            python3 "$WORK_DIR/wizard.py" "$WORK_DIR" >>"$LAUNCH_LOG" 2>&1 &
    fi
}

if detect_gui_session; then
    launch_wizard
    exit 0
fi

if [ "$EUID" -ne 0 ]; then
    exec sudo env HIDDIFY_CLEAN_INSTALL=1 bash "$SCRIPT_DIR/install.sh"
else
    exec env HIDDIFY_CLEAN_INSTALL=1 bash "$SCRIPT_DIR/install.sh"
fi
