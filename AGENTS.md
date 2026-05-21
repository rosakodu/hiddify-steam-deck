# Codex Agent Rules

## SteamOS Authorization Invariant

Any change to the installer, Decky plugin, VPN start/stop logic, release packaging,
or SteamOS integration must preserve passwordless runtime authorization for both
the desktop Hiddify client and the Decky plugin.

Before publishing a release, verify all of the following:

- `/etc/sudoers.d/zz-hiddify` exists, is owned by `root:root`, has mode `0440`,
  and passes `visudo -cf`.
- `zz-hiddify` grants `deck` passwordless access to `/opt/hiddify/HiddifyCli *`,
  `/usr/bin/ip *`, and `/usr/bin/fuser *`.
- `10-hiddify.rules` is written to `/etc/polkit-1/rules.d` and, when SteamOS
  allows it, also to `/usr/share/polkit-1/rules.d`.
- The polkit rule allows the `deck` user to run both `org.freedesktop.resolve1.*`
  and `org.freedesktop.network1.*` DNS/domain/default-route actions.
- The Decky plugin re-applies the same sudoers and polkit rules on plugin load,
  then restarts `polkit` after writing them.
- A clean reinstall and a reboot must not bring back these prompts:
  `Authentication is required to set domains`,
  `Authentication is required to set default route`,
  `Authentication is required to set DNS servers`.

Recommended Steam Deck verification commands:

```bash
sudo visudo -cf /etc/sudoers.d/zz-hiddify

for action in \
  org.freedesktop.resolve1.set-dns-servers \
  org.freedesktop.resolve1.set-domains \
  org.freedesktop.resolve1.set-default-route \
  org.freedesktop.network1.set-dns-servers \
  org.freedesktop.network1.set-domains \
  org.freedesktop.network1.set-default-route \
  org.freedesktop.NetworkManager.settings.modify.system \
  org.freedesktop.NetworkManager.settings.modify.global-dns
do
  pkcheck --action-id "$action" --process $$ --allow-user-interaction \
    && echo "YES $action" \
    || echo "NO $action"
done
```

All listed `pkcheck` calls must return `YES` without opening a password prompt.

## Release Packaging Invariant

For every release:

- Build the `.bin` installer with `bash setup.sh`, not `setup-clean.sh`.
- The bundled Decky plugin zip must include `plugin.json`, `package.json`,
  `main.py`, `dist/`, and `bin/`.
- `plugin.json` and `package.json` versions must match the release tag.
- Run an extraction smoke test with `--noexec --target` and confirm the bundled
  plugin still contains `package.json`.
