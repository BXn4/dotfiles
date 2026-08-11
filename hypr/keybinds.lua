local s = "SUPER"

-- My apps
-- tm = TerMinal, etc..
-- sr = Screenshot Region
-- sw = Screenshot Window

local tm = "kitty"
local ed = "zeditor"
local fm = "nautilus"
local mn = "wofi --show drun"
local bw = "torbrowser-launcher"
local sr = "hyprshot -m region -o /home/" .. os.getenv("USER") .. "/Pictures/Screenshots"
local sw = "hyprshot -m window -o /home/" .. os.getenv("USER") .. "/Pictures/Screenshots"
local cp = "hyprpicker -a"

-- Apps
hl.bind(s .. " + T", hl.dsp.exec_cmd(tm))
hl.bind(s .. " + Z", hl.dsp.exec_cmd(ed))
hl.bind(s .. " + E", hl.dsp.exec_cmd(fm))
hl.bind(s .. " + SPACE", hl.dsp.exec_cmd(mn))
hl.bind(s .. " + B", hl.dsp.exec_cmd(bw))
hl.bind(s .. " + PRINT", hl.dsp.exec_cmd(sr))
hl.bind(s .. " + ALT + PRINT", hl.dsp.exec_cmd(sw))
hl.bind(s .. " + R", hl.dsp.exec_cmd(cp))


-- Window stuffs
hl.bind(s .. " + Q", hl.dsp.window.close())
hl.bind(s .. " + F", hl.dsp.window.fullscreen())
hl.bind(s .. " + W", hl.dsp.window.float())
hl.bind(s .. " + J", hl.dsp.layout("togglesplit"))
hl.bind(s .. " + G", hl.dsp.group.toggle())

-- Mouse
hl.bind(s .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(s .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Resize window
hl.bind(s .. " + SHIFT + left",
    hl.dsp.window.resize({ x = -50, y = 0, relative = true }))
hl.bind(s .. " + SHIFT + right",
    hl.dsp.window.resize({ x = 50, y = 0, relative = true }))
hl.bind(s .. " + SHIFT + up",
    hl.dsp.window.resize({ x = 0, y = -50, relative = true }))
hl.bind(s .. " + SHIFT + down",
    hl.dsp.window.resize({ x = 0, y = 50, relative = true }))

-- Move window
hl.bind(s .. " + CTRL + left",
    hl.dsp.window.move({ direction = "l" }))
hl.bind(s .. " + CTRL + right",
    hl.dsp.window.move({ direction = "r" }))
hl.bind(s .. " + CTRL + up",
    hl.dsp.window.move({ direction = "u" }))
hl.bind(s .. " + CTRL + down",
    hl.dsp.window.move({ direction = "d" }))

-- Focus
hl.bind(s .. " + left",
    hl.dsp.focus({ direction = "l" }))
hl.bind(s .. " + right",
    hl.dsp.focus({ direction = "r" }))
hl.bind(s .. " + up",
    hl.dsp.focus({ direction = "u" }))
hl.bind(s .. " + down",
    hl.dsp.focus({ direction = "d" }))
hl.bind(s .. " + TAB",
    hl.dsp.window.cycle_next())

-- Move to workspaces
-- 1: left monitor
-- 2: right monitor
hl.bind(s .. " + ALT + left",
    hl.dsp.window.move({ workspace = "1" }))
hl.bind(s .. " + ALT + right",
    hl.dsp.window.move({ workspace = "2" }))

-- Volume
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd([[
    bash -c 'wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+ && VOL=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk "{print int(\$2 * 100)}") && notify-send -h int:value:$VOL "Volume" "$VOL%" -h string:x-canonical-private-synchronous:volume -t 1000'
]]), { repeating = true })
-- Volume Lower
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd([[
    bash -c 'wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%- && VOL=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk "{print int(\$2 * 100)}") && notify-send -h int:value:$VOL "Volume" "$VOL%" -h string:x-canonical-private-synchronous:volume -t 1000'
]]), { repeating = true })
-- Volume Mute
hl.bind("XF86AudioMute", hl.dsp.exec_cmd([[
    bash -c 'wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle; OUT=$(wpctl get-volume @DEFAULT_AUDIO_SINK@); if echo "$OUT" | grep -q "\[MUTED\]"; then notify-send "Muted" -h string:x-canonical-private-synchronous:volume -t 1000 -u critical; else VOL=$(echo "$OUT" | awk "{print int(\$2 * 100)}"); notify-send "Unmuted" "$VOL%" -h int:value:$VOL -h string:x-canonical-private-synchronous:volume -t 1000; fi'
]]), { repeating = true })
