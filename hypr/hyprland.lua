require("keybinds")
require("monitors")
require("autostart")
require("style")
require("cursor")
require("input")
require("plugins")

hl.config({
    master = {
        new_status = "master",
    },
    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo   = true
    },
    scrolling = {
        fullscreen_on_one_column = true,
    },
})
