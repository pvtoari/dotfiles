local mainMod = "SUPER"
local terminal = "kitty"
local fileManager = "nautilus"
local menu = "vicinae vicinae://toggle"
local windows = "vicinae vicinae://launch/wm/switch-windows"
local clipboard = "vicinae vicinae://launch/clipboard/history"
local emoji = "vicinae vicinae://launch/core/search-emojis"

hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + M", hl.dsp.exit())
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd(clipboard))
hl.bind(mainMod .. " + X", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
hl.bind("Super+Alt + Space", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + SUPER_L", hl.dsp.exec_cmd(windows), { release = true })
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))
hl.bind("Ctrl+Alt + Delete", hl.dsp.exec_cmd("wlogout --protocol layer-shell"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("~/.config/swaylock/lock.sh"))
hl.bind(mainMod .. " + I", hl.dsp.exec_cmd("XDG_CURRENT_DESKTOP=gnome gnome-control-center"))
hl.bind(mainMod .. " + period", hl.dsp.exec_cmd(emoji))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("pkill waybar; hyprctl dispatch exec waybar"))
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("swaync-client -t"))

hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

 hl.bind(mainMod .. " + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. " + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. " + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. " + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. " + 9", hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. " + 0", hl.dsp.focus({ workspace = 10 }))

 hl.bind(mainMod .. " + SHIFT + 1", hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. " + SHIFT + 2", hl.dsp.window.move({ workspace = 2 }))
hl.bind(mainMod .. " + SHIFT + 3", hl.dsp.window.move({ workspace = 3 }))
hl.bind(mainMod .. " + SHIFT + 4", hl.dsp.window.move({ workspace = 4 }))
hl.bind(mainMod .. " + SHIFT + 5", hl.dsp.window.move({ workspace = 5 }))
hl.bind(mainMod .. " + SHIFT + 6", hl.dsp.window.move({ workspace = 6 }))
hl.bind(mainMod .. " + SHIFT + 7", hl.dsp.window.move({ workspace = 7 }))
hl.bind(mainMod .. " + SHIFT + 8", hl.dsp.window.move({ workspace = 8 }))
hl.bind(mainMod .. " + SHIFT + 9", hl.dsp.window.move({ workspace = 9 }))
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))

 hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

 hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("pactl -- set-sink-volume 0 -5%"))
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("pactl -- set-sink-volume 0 +5%"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("pactl -- set-sink-mute 0 toggle"))
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("pactl -- set-source-mute 0 toggle"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl s 5%-"))
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl s +5%"))

hl.bind("Print", hl.dsp.exec_cmd('grim -o "$(hyprctl -j activeworkspace | jq -r \'.monitor\')" - | wl-copy'))
hl.bind("Ctrl+Super+Shift + S", hl.dsp.exec_cmd('grim -g "$(slurp)" "tmp.png" && tesseract "tmp.png" - | wl-copy && rm "tmp.png"'))
hl.bind("Super+Shift+Alt + S", hl.dsp.exec_cmd('grim -g "$(slurp)" - | swappy -f -'))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd('grim -g "$(slurp)" - | wl-copy'))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd('pkill -SIGINT -x wf-recorder || wf-recorder -o "$(hyprctl -j activeworkspace | jq -r \'.monitor\')" -f $HOME/Videos/recording-$(date +%Y%m%d-%H%M%S).mp4'))
hl.bind(mainMod .. " + SHIFT + R", hl.dsp.exec_cmd('pkill -SIGINT -x wf-recorder || wf-recorder -g "$(slurp)" -f $HOME/Videos/recording-$(date +%Y%m%d-%H%M%S).mp4'))

hl.bind("Alt+Shift + V", hl.dsp.exec_cmd('ydotool type "$(wl-paste)"'))
