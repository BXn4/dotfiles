# Hyprland Config
A simple, and in my opinion: handy. Hyprland configuration
- **Bar:** ashell
- **WM:** hyprland
- **Terminal:** Kitty
- **Notification daemon:** Swaync
-  **Wallpaper daemon:** hyprpaper or mpvpaper
- **Theme:** Catppuccin Frappe
# Autostart
The autostart is set to "catppuccin-frappe-dark cursor", and "hyprpaper" is currently the wallpaper daemon. If you want to use "mpvpaper", you can comment the "hyprpaper" out, or replace it with "mpvpaper".
# Hyprpaper
DP-1 || Its configured for 2 ports.
The wallpaper is should located at: ~/Pictures/Wallpapers/bg.jpg
# Input
Keyboard layout: HU.
# Displays
My main display is on the left, and I have a vertical display on the right.
If your setup is different, please correct this!
## Apps
| Command  | Function      | App        |
|----------|---------------|------------|
| `tm`     | Terminal      | kitty      |
| `ed`     | Editor        | zeditor    |
| `fm`     | File Manager  | nautilus   |
| `al`     | App Launcher  | wofi       |
| `bw`     | Browser       | firefox    |
| `sr`     | Screenshot    | hyprshot   |
| `he`     | Hyprexpo      | hyprexpo   |
| `cp`     | Color Picker  | hyprpicker |
## Keybinds for apps
| Keybind                | Function + command        |
|------------------------|---------------------------|
| `SUPER + T`            | Terminal (`tm`)           |
| `SUPER + Z`            | Editor (`ed`)             |
| `SUPER + S`            | File Manager (`fm`)       |
| `SUPER + SPACE`        | App Launcher (`al`)       |
| `SUPER + B`            | Browser (`bw`)            |
| `SUPER + PRINT`        | Screenshot (region `sr`)  |
| `SUPER + ALT + PRINT`  | Screenshot (window `sw`)  |
| `SUPER + A`            | Hyprexpo (`he`)           |
| `SUPER + R`            | Color Picker (`cp`)       |
## Keybinds for window management
| Keybind          | Function                   |
|------------------|----------------------------|
| `SUPER + Q`      | Close the focused window   |
| `SUPER + F`      | Fullscreen                 |
| `SUPER + W`      | Floating toggle            |
| `SUPER + J`      | Split toggle               |
| `SUPER + G`      | Group toggle               |

## Keybinds to resize windows
| Keybind                  | Function     |
|--------------------------|--------------|
| `SUPER + SHIFT + ←`      | -50 px left  |
| `SUPER + SHIFT + →`      | +50 px right |
| `SUPER + SHIFT + ↑`      | -50 px up    |
| `SUPER + SHIFT + ↓`      | +50 px down  |
## Keybinds to move windows
| Keybind                | Function |
|------------------------|----------|
| `SUPER + CTRL + ←`     | To Left  |
| `SUPER + CTRL + →`     | To Right |
| `SUPER + CTRL + ↑`     | To Up    |
| `SUPER + CTRL + ↓`     | To Down  |
## Keybinds to change window focus
| Keybind          | Function       |
|------------------|----------------|
| `SUPER + ←`      | Focus To Left  |
| `SUPER + →`      | Focus To Right |
| `SUPER + ↑`      | Focus To Up    |
| `SUPER + ↓`      | Focus To Down  |
## Keybinds to move windows to workspaces
| Keybind                | Function                       |
|------------------------|--------------------------------|
| `SUPER + ALT + ←`      | To Workspace 1 (left display)  |
| `SUPER + ALT + →`      | To Workspace 2 (right Display) |
## Functions keys
| Keybind  | Function    |
|----------|-------------|
| `F1`     | Toggle Mute |
| `F2`     | Volume -5%  |
| `F3`     | Volume +5%  |
