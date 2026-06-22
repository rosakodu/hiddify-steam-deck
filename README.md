# VPN для Steam Deck / SteamOS — плагин игрового режима Hiddify Decky

<img src="https://raw.githubusercontent.com/denmrnngp-cloud/hiddify-steam-deck-vpn/main/assets/cover.png" alt="Hiddify VPN для Steam Deck и SteamOS с плагином игрового режима Decky Loader" width="100%"/>

<img src="https://raw.githubusercontent.com/denmrnngp-cloud/hiddify-steam-deck-vpn/main/assets/stats-ticker.svg" alt="Статистика проекта в реальном времени: еженедельные загрузки, посещения репозитория, клонирования, звезды и запрос звезд" width="100%"/>

> **Неофициальный порт [hiddify/hiddify-app](https://github.com/hiddify/hiddify-app) для Steam Deck / SteamOS**
> Установщик клиента Hiddify для режима рабочего стола + плагин VPN для игрового режима Decky Loader.
> Работает на базе [sing-box](https://github.com/SagerNet/sing-box) · Поддерживает VLESS/Reality, VMess, Trojan, Hysteria 2, TUIC, Shadowsocks

[![Based on](https://img.shields.io/badge/based%20on-hiddify%2Fhiddify--app-blue?logo=github)](https://github.com/hiddify/hiddify-app)
[![Platform](https://img.shields.io/badge/platform-Steam%20Deck%20%2F%20SteamOS-informational?logo=steam)](https://store.steampowered.com/steamdeck)
[![Decky Plugin](https://img.shields.io/badge/Decky-plugin-green?logo=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyNCAyNCI+PHBhdGggZmlsbD0id2hpdGUiIGQ9Ik0xMiAyTDQgNXY2YzAgNS4yNSAzLjQgMTAuMTUgOCAxMS4zOEM' )](https://decky.xyz)

[English](README.en.md) | **Русский**

Hiddify для Steam Deck предоставляет пользователям простой способ установки и управления VPN Hiddify как в режиме рабочего стола, так и в игровом режиме. В комплект входит самораспаковывающийся установщик для Linux, клиент Hiddify для режима рабочего стола и плагин Decky Loader для управления VPN в игровом режиме.

Плагин Decky поддерживает включение/выключение VPN, переключение профилей VPN, обновление серверов подписки и выбор сервера непосредственно в игровом режиме (когда активный профиль Hiddify содержит несколько серверов).

## VPN для Steam Deck при ограничении доступа к интернету

Этот проект создан для пользователей Steam Deck, которым необходим VPN на SteamOS, когда доступ к интернету заблокирован, фильтруется или работает нестабильно в их стране, у провайдера, в отеле, учебном заведении или публичной сети Wi-Fi.

Используйте Hiddify Steam Deck VPN, если вам нужны:

- VPN для Steam Deck, который работает как в режиме рабочего стола, так и в игровом режиме.
- Плагин VPN для Decky, позволяющий подключаться и отключаться без выхода из игрового режима.
- Переключение профилей VPN прямо из меню быстрого доступа Steam Deck.
- Обновление серверов подписки прямо из плагина Decky.
- Выбор сервера в плагине Decky, если профиль Hiddify предоставляет несколько серверов.
- Поддержка VLESS, Reality, VMess, Trojan, Shadowsocks, Hysteria2 и TUIC на базе sing-box для SteamOS.
- Доступ в интернет на Steam Deck через вашу существующую подписку или прокси-профиль Hiddify.

Популярные поисковые запросы: **Steam Deck VPN**, **VPN Steam Deck**, **SteamOS VPN**, **плагин Decky VPN**, **VPN в игровом режиме**, **Hiddify Steam Deck**, **Hiddify SteamOS**, **плагин Hiddify Decky**, **sing-box Steam Deck**.

Подробнее: [Steam Deck VPN для игрового режима и режима рабочего стола](docs/steam-deck-vpn.md)

## Последний релиз

Последняя стабильная сборка: **v1.3.17**

- Релиз: https://github.com/denmrnngp-cloud/hiddify-steam-deck-vpn/releases/tag/v1.3.17
- Установщик: `Hiddify-linux-x64-v1.3.17.bin`
- Плагин Decky: `decky-hiddify-v1.3.17.zip`

В этом релизе переработан **выбор серверов** в игровом режиме (теперь они отображаются в виде таких же компактных плашек, как и строка профиля, что решает проблему с некорректным макетом, отмеченную пользователем @SRMUFA01 в [#8](https://github.com/denmrnngp-cloud/hiddify-steam-deck-vpn/issues/8)), добавлено предупреждение о необходимости отключить VPN перед нажатием кнопки ↻, а также исправлено дублирование уведомлений при двойном нажатии на геймпаде. Сборка основана на обновлении подписок в игровом режиме из версии v1.3.16 и исправлении HTTPS-подписок, а также сохраняет все исправления авторизации SteamOS для изменений DNS/доменов/маршрутов по умолчанию после переустановки или перезагрузки.

## Демонстрация

### Установщик и базовое переключение VPN

<a href="https://github.com/denmrnngp-cloud/hiddify-steam-deck-vpn/releases/download/v1.2.0/demo.mp4">
  <img src="https://raw.githubusercontent.com/denmrnngp-cloud/hiddify-steam-deck-vpn/main/assets/demo.gif" alt="Демо — установщик Hiddify VPN и переключение VPN в режиме рабочего стола и игровом режиме" width="100%"/>
</a>

▶ [Скачать / посмотреть полную демоверсию (mp4)](https://github.com/denmrnngp-cloud/hiddify-steam-deck-vpn/releases/download/v1.2.0/demo.mp4)

### Профили и выбор серверов в игровом режиме

<a href="https://raw.githubusercontent.com/denmrnngp-cloud/hiddify-steam-deck-vpn/main/assets/game-mode-profiles-demo.mp4">
  <img src="https://raw.githubusercontent.com/denmrnngp-cloud/hiddify-steam-deck-vpn/main/assets/game-mode-profiles-demo.gif" alt="Демо — плагин Hiddify VPN Decky, профили и выбор серверов в игровом режиме" width="100%"/>
</a>

Это демо показывает работу плагина Decky в игровом режиме как с односерверными, так и с многосерверными профилями. Выбор сервера отображается только для тех профилей, где доступно несколько серверов.

▶ [Скачать / посмотреть демоверсию профилей и выбора серверов (mp4)](https://raw.githubusercontent.com/denmrnngp-cloud/hiddify-steam-deck-vpn/main/assets/game-mode-profiles-demo.mp4)

---

## Содержимое релиза

| Файл | Описание |
|------|-------------|
| `Hiddify-linux-x64-v1.3.17.bin` | Самораспаковывающийся установщик (~51 МБ). Устанавливает клиент для рабочего стола и встроенный плагин Decky |
| `decky-hiddify-v1.3.17.zip` | Автономный архив плагина Decky для ручной установки или отладки |
| `installer-src/` | Исходный код установщика (install.sh + все сопутствующие файлы) |

---

## Системные требования

- Steam Deck (SteamOS) или Ubuntu 22.04+ / Debian 12+
- Архитектура: x86-64 (amd64)
- Для игрового режима: установленный [Decky Loader](https://decky.xyz/)

---

## Установка

### 1. Скачайте установщик в режиме рабочего стола

Откройте **Konsole** и выполните:

```bash
cd ~/Downloads
curl -L -o Hiddify-linux-x64-v1.3.17.bin \
  https://github.com/denmrnngp-cloud/hiddify-steam-deck-vpn/releases/download/v1.3.17/Hiddify-linux-x64-v1.3.17.bin
chmod +x Hiddify-linux-x64-v1.3.17.bin
```

> [!IMPORTANT]
> **Если загрузка заблокирована или работает слишком медленно (например, в РФ):**
> Используйте зеркало GitHub Proxy для скачивания установщика:
> ```bash
> cd ~/Downloads
> curl -L -o Hiddify-linux-x64-v1.3.17.bin \
>   https://gh-proxy.com/https://github.com/denmrnngp-cloud/hiddify-steam-deck-vpn/releases/download/v1.3.17/Hiddify-linux-x64-v1.3.17.bin
> chmod +x Hiddify-linux-x64-v1.3.17.bin
> ```
> Также вы можете скачать файл `Hiddify-linux-x64-v1.3.17.bin` на любое другое устройство (например, смартфон с работающим VPN) и перенести его в папку `Downloads` на Steam Deck с помощью **KDE Connect** или обычной флешки.

### 2. Запустите установщик

В том же окне Konsole выполните:

```bash
bash ~/Downloads/Hiddify-linux-x64-v1.3.17.bin
```

Установщик автоматически:
- Определит Steam Deck и применит нужные параметры.
- Покажет меню переустановки/удаления, если Hiddify уже установлен.
- Установит все файлы в директорию `/opt/hiddify/`.
- Применит `patchelf` (абсолютный RPATH — работает из любой директории).
- Применит `setcap cap_net_admin` (создание TUN без прав root во время выполнения).
- Настроит беспарольный доступ sudo для HiddifyCli.
- Настроит правила polkit (отсутствие запросов пароля при изменении DNS/маршрутов).
- Создаст пользовательскую службу systemd.
- Запишет настройки среды Decky для Hiddify Core (`decky-hiddify-settings.json`).
- Установит или обновит встроенный плагин Decky.
- Создаст ярлык на рабочем столе (в категории «Интернет»).
- Установит иконку приложения.

### 3. Настройте профиль VPN

Запустите графический интерфейс из меню приложений или напрямую:

```bash
/opt/hiddify/hiddify-gui
```

Добавьте конфигурацию VPN (ссылку на подписку или вручную).
Конфигурация сохраняется в:
```
~/.local/share/app.hiddify.com/data/current-config.json
```

### 4. Используйте плагин Decky в игровом режиме

Вернитесь в игровой режим, нажмите кнопку `···`, откройте **Decky Loader**, затем выберите **Hiddify VPN**.

Установщик `.bin` уже содержит плагин Decky. Ручная установка плагина требуется только для отладки:

```bash
cd ~/Downloads
curl -L -o decky-hiddify-v1.3.17.zip \
  https://github.com/denmrnngp-cloud/hiddify-steam-deck-vpn/releases/download/v1.3.17/decky-hiddify-v1.3.17.zip
sudo rm -rf /home/deck/homebrew/plugins/decky-hiddify
sudo unzip -o decky-hiddify-v1.3.17.zip -d /home/deck/homebrew/plugins/
sudo systemctl restart plugin_loader
```

> [!TIP]
> **Альтернативное скачивание архива плагина через зеркало (при проблемах с загрузкой):**
> ```bash
> curl -L -o decky-hiddify-v1.3.17.zip \
>   https://gh-proxy.com/https://github.com/denmrnngp-cloud/hiddify-steam-deck-vpn/releases/download/v1.3.17/decky-hiddify-v1.3.17.zip
> ```

---

## Удаление

Запустите установщик снова — появится меню:

```
Hiddify is already installed in /opt/hiddify

  [1] Reinstall (update)
  [2] Uninstall completely
  [3] Cancel
```

Выберите `2` для полного удаления. Будут удалены:
- `/opt/hiddify/`
- пользовательская служба systemd
- ярлык на рабочем столе и иконка из `~/.local/share/`

---

## Управление VPN через терминал

```bash
# Запустить VPN
systemctl --user start hiddify

# Остановить VPN
systemctl --user stop hiddify

# Статус
systemctl --user status hiddify

# Логи в реальном времени
journalctl --user -u hiddify -f
```

---

## Технические подробности

### Структура папки `/opt/hiddify/`

```
/opt/hiddify/
├── hiddify              # Flutter GUI (setcap + абсолютный RUNPATH)
├── HiddifyCli           # Ядро VPN (setcap + абсолютный RUNPATH)
├── hiddify-gui          # Скрипт-обертка для ярлыка на рабочем столе
├── hiddify.png          # Иконка приложения
├── _tools/
│   └── patchelf         # Статический patchelf (встроенный)
├── lib/
│   ├── hiddify-core.so          # Ядро sing-box
│   ├── libflutter_linux_gtk.so  # Среда выполнения Flutter
│   ├── libayatana-appindicator3.so.1  # Системный трей (встроенный)
│   ├── libayatana-ido3-0.4.so.0       # Зависимость системного трея (встроенная)
│   ├── libayatana-indicator3.so.7     # Зависимость системного трея (встроенная)
│   └── ... (другие файлы .so плагинов Flutter)
└── data/
    └── flutter_assets/   # Ассеты Flutter, иконки флагов, шрифты
```

### Основные исправления при порте

| Проблема | Решение |
|---------|----------|
| Файл `./lib/hiddify-core.so не найден` при запуске из другой папки | Использование `patchelf --replace-needed` + `--set-rpath /opt/hiddify/lib` |
| Ошибка `libayatana-appindicator3.so.1 не найдена` на SteamOS | Библиотека взята из Ubuntu 22.04, применен patchelf к `libtray_manager_plugin.so` |
| Ошибка `operation not permitted` при создании TUN | Выполнение `setcap cap_net_admin,cap_net_bind_service,cap_net_raw=+eip` для обоих исполняемых файлов |
| Ошибка `cache.db: permission denied` | Рабочая папка (CWD) изменена на `~/.local/share/app.hiddify.com` (доступна для записи пользователю) |
| Сброс возможностей (caps) после patchelf | `setcap` применяется строго **после** `patchelf` |
| Пользовательская служба systemd на SteamOS | Служба размещена в `~/.config/systemd/user/` (сохраняется при обновлениях ОС) |
| Игнорирование `LD_LIBRARY_PATH` при использовании setcap | Задание абсолютного RUNPATH через patchelf вместо `LD_LIBRARY_PATH` |
| Запрос пароля sudo при каждом переключении VPN | Файл `/etc/sudoers.d/zz-hiddify` разрешает беспарольный доступ только для HiddifyCli и вспомогательных скриштов очистки, используемых плагином Decky |
| Обновление SteamOS A/B сбрасывает `/etc/` и `/usr/` | Плагин пытается применить настройки заново при загрузке; установщик решает это при переустановке |
| `pkill` завершает сам плагин | Использование трюка с квадратными скобками: `pkill -f '/opt/hiddify/hiddif[y]'` — не совпадает с путем плагина |
| Ошибка `systemctl --user` в подпроцессе плагина | Установка переменных окружения `DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus` и `XDG_RUNTIME_DIR=/run/user/1000` |
| VPN GUI Hiddify не останавливается плагином | Остановка службы `app-hiddify@<uuid>.service` путем поиска точного имени юнита через `systemctl list-units` |
| Многосерверный VLESS завершается ошибкой в игровом режиме `unknown load balance strategy:` | Служба Decky запускает HiddifyCli с флагом `-d decky-hiddify-settings.json` и `balancer-strategy: round-robin` |
| Многосерверный VLESS требует выбора сервера в игровом режиме | Плагин показывает выбор серверов только для многосерверных профилей и может вручную собирать конфигурацию для одного выбранного сервера |
| Устаревший список серверов в удаленной подписке | Использование функции **Update servers** в плагине Decky при отключенном VPN; плагин обновляет активную подписку и пересобирает конфигурацию для игрового режима |
| Ошибка загрузки подписки по HTTPS `CERTIFICATE_VERIFY_FAILED` | Встроенный Python в Decky не видит хранилище сертификатов SteamOS; плагин явно загружает системный набор CA (`/etc/ssl/certs/ca-certificates.crt`) с повторной попыткой без проверки только в случае ошибки TLS-verify |
| Элементы управления в игровом режиме не выбираются крестовиной/стиком | Кнопка обновления и плашки профилей обернуты в `Focusable` с обработчиками `onGamepadFocus`/`onGamepadBlur` для отображения рамки фокуса, наряду с полной поддержкой сенсорного экрана |

### Почему установка сохраняется при обновлениях SteamOS

Обновления SteamOS происходят через смену разделов A/B — изменяется только раздел только для чтения (`/usr`, `/etc`).
Установщик записывает файлы исключительно в:
- `/opt/hiddify/` — смонтировано из раздела `/home` (сохраняется)
- `~/.config/systemd/user/` — домашняя директория (сохраняется)
- `~/.local/share/` — домашняя директория (сохраняется)

Возможности `setcap` сохраняются как xattr на файле в `/opt/hiddify/`, который также находится в `/home` и не сбрасывается.

### Ручной запуск VPN

```bash
cd ~/.local/share/app.hiddify.com
/opt/hiddify/HiddifyCli run \
  -c ~/.local/share/app.hiddify.com/data/current-config.json \
  --tun \
  -d ~/.local/share/app.hiddify.com/data/decky-hiddify-settings.json
```

---

## Плагин Decky (v1.3.17)

Плагин `decky-hiddify` добавляет управление VPN в меню быстрого доступа (кнопка `···`).

### Функции

- **Переключатель VPN ON / OFF** — кнопка с цветным индикатором состояния (зеленый = подключено, желтый = подключение, красный = отключено).
- **Выбор профиля** — переключение между профилями VPN без выхода из игрового режима (перед этим VPN должен быть остановлен).
- **Выбор сервера для многосерверных профилей** — отображается только тогда, когда выбранный профиль содержит несколько доступных серверов.
- **Обновление серверов** — для удаленных профилей подписки обновляет список серверов прямо из игрового режима при остановленном VPN.
- **Скрытый выбор сервера для односерверных профилей** — профили Shadowsocks или односерверные профили VLESS сохраняют компактный интерфейс.
- **Режим ручного выбора сервера** — выбор конкретного исходящего соединения VLESS/VMess/Trojan/Shadowsocks из игрового режима.
- **Режим Hiddify по умолчанию** — позволяет Hiddify Core использовать сгенерированный селектор/балансировщик с параметром `balancer-strategy: round-robin`.
- **Запоминание сервера для каждого профиля** — выбранный сервер сохраняется вне базы данных Hiddify, поэтому данные профиля режима рабочего стола не перезаписываются.
- **Подсветка фокуса для геймпада** — кнопка обновления и плашка профиля показывают четкое кольцо фокуса (рамка + свечение + масштабирование) при навигации с помощью крестовины или стика, наряду с полной поддержкой сенсорного экрана.
- Отображение статуса подключения и IP-адреса TUN.
- Синхронизация с Hiddify GUI (остановка VPN из плагина также останавливает VPN, запущенный через GUI, управляя службой systemd).
- Фоновый мониторинг состояния с пуш-событиями изменений состояния VPN (опрос каждые 5 секунд).
- Просмотр логов (последние 40 строк).
- Предохранитель ошибок (Error boundary) — ошибки рендеринга отображаются в интерфейсе, а не приводят к сбою плагина.

### Архитектура плагина

```
decky-hiddify/
├── main.py        # Бэкенд (Python): подпроцесс HiddifyCli + управление профилями
└── src/
    └── index.tsx  # Фронтенд (React/TSX): интерфейс панели
```

**Переключение профилей** считывает профили из `~/.local/share/app.hiddify.com/db.sqlite` и повторно генерирует `current-config.json` с помощью `HiddifyCli build` из конфигурации выбранного профиля. Это позволяет сохранять логику работы балансировщика/селектора/конечных точек аналогично версии для рабочего стола. Перед переключением VPN должен быть остановлен.

**Переключение серверов** анализирует выбранный профиль и показывает только реальные пользовательские серверы. Внутренние исходящие соединения ядра Hiddify (такие как `select`, `balance`, `lowest`, `direct`, `block` и `dns`) скрываются. Для режима ручного выбора сервера плагин собирает конфигурацию времени выполнения игрового режима, используя только выбранный сервер и необходимые обходные пути. Для режима Hiddify по умолчанию служба запускается с файлом `decky-hiddify-settings.json`, включая `balancer-strategy: round-robin`.

**Синхронизация с GUI**: при остановке VPN из плагина выполняется поиск точного имени службы через `systemctl --user list-units 'app-hiddify@*.service'`, после чего она останавливается. Также отправляется сигнал `SIGTERM` напрямую процессу GUI `hiddify`.

---

## Сборка из исходников

### Установщик

Три крупных бинарных файла апстрима **не** включены в этот репозиторий. Загрузите их со страницы [релизов Hiddify](https://github.com/hiddify/hiddify-app/releases) и поместите в папку `release/installer-src/lib/`:

| Файл | Размер | Источник |
|------|------|--------|
| `lib/hiddify-core.so` | ~70 МБ | Релиз Hiddify (ядро sing-box) |
| `lib/libflutter_linux_gtk.so` | ~32 МБ | Релиз Hiddify (Flutter runtime) |
| `lib/libapp.so` | ~15 МБ | Релиз Hiddify (приложение Flutter) |

Затен пересоберите самораспаковывающийся установщик:

```bash
makeself --nox11 release/installer-src/ Hiddify-linux-x64-v1.3.17.bin "Hiddify VPN v1.3.17" bash setup.sh
```

### Плагин Decky

```bash
cd decky-hiddify/
npm install
npm run build
# Результат: dist/ — скопируйте на Steam Deck в ~/homebrew/plugins/decky-hiddify/
```

---

## Источники

- Приложение Hiddify: https://github.com/hiddify/hiddify-app
- Decky Loader: https://github.com/SteamDeckHomebrew/decky-loader
- sing-box (hiddify-core): https://github.com/SagerNet/sing-box
