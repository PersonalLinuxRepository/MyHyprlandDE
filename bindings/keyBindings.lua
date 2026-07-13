local hyprshot = os.getenv("HOME") .. "/.local/bin/hyprshot"
local superKey = "SUPER" -- Sets "Windows" key as main modifier
local shiftKey = "SHIFT"
local fileManager = "dolphin"
local menu = "hyprlauncher"

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind("F1", hl.dsp.exec_cmd("kitty"))
hl.bind("Print", hl.dsp.exec_cmd('grim -g "$(slurp -d)" - | wl-copy'))
hl.bind(shiftKey .. "+ Print" , hl.dsp.exec_cmd([[bash -c 'grim ~/Изображения/Screenshot-$(date +%Y-%m-%d_%H-%M-%S).png']])) 

local closeWindowBind = hl.bind(superKey .. " + C", hl.dsp.window.close())
-- closeWindowBind:set_enabled(false)
hl.bind(superKey .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
--hl.bind(superKey .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(superKey .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(superKey .. " + R", hl.dsp.exec_cmd(menu))
hl.bind(superKey .. " + P", hl.dsp.window.pseudo())
hl.bind(superKey .. " + J", hl.dsp.layout("togglesplit"))    -- dwindle only

hl.bind(superKey .. "+ X", function ()
    hl.dispatch(hl.dsp.window.tag({
        tag = "minimized",
        window = hl.get_active_window()
    }))

    hl.dispatch(hl.dsp.window.move({
        workspace = "special:minimized",
        follow = false
    }))
end)

hl.bind(superKey .. " + Tab", function()
    hl.dispatch(hl.dsp.window.move({
        workspace = hl.get_active_workspace(),
        window = "tag:minimized"
    }))

    hl.dispatch(hl.dsp.window.clear_tags({
        window = "tag:minimized"
    }))
end)


-- Move focus with superKey + arrow keys
hl.bind(superKey .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(superKey .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(superKey .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(superKey .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with superKey + [0-9]
-- Move active window to a workspace with superKey + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(superKey .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(superKey .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
hl.bind(superKey .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(superKey .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with superKey + scroll
hl.bind(superKey .. "+ mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(superKey .. "+ mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with superKey + LMB/RMB and dragging
hl.bind(superKey .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(superKey .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })


-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

-- Notifications (swaync)
hl.bind("SUPER + COMMA", hl.dsp.exec_cmd("swaync-client --close-latest"), { description = "Dismiss last notification" })
hl.bind("SUPER + SHIFT + COMMA", hl.dsp.exec_cmd("swaync-client --close-all"), { description = "Dismiss all notifications" })
hl.bind("SUPER + CTRL + COMMA", hl.dsp.exec_cmd("swaync-client --toggle-panel"), { description = "Open notifications panel" })
hl.bind("SUPER + ALT + COMMA", hl.dsp.exec_cmd("swaync-client --toggle-dnd && swaync-client --get-dnd | grep -q 'true' && notify-send 'Silenced notifications' || notify-send 'Enabled notifications'"), { description = "Toggle silencing notifications" })

-- Screenshots
--hl.bind("PRINT", hl.dsp.exec_cmd(hyprshot .. " -m region"), { description = "Region screenshot" })
hl.bind("ALT + PRINT", hl.dsp.exec_cmd(hyprshot .. " -m window"), { description = "Window screenshot" })
hl.bind("SHIFT + PRINT", hl.dsp.exec_cmd(hyprshot .. " -m output"), { description = "Monitor screenshot" })

-- Multimedia keys for media, volume and screen brightness (with SwayOSD)
-- These have been disabled since the default ~/.config/hypr/hyprland.lua already binds these
-- To activate swayosd, remove the duplicate XF86* binds from hyprland.lua and uncomment the following
--hl.bind("XF86AudioNext", hl.dsp.exec_cmd("swayosd-client --playerctl next"), { locked = true, description = "Next track" })
--hl.bind("XF86AudioPause", hl.dsp.exec_cmd("swayosd-client --playerctl play-pause"), { locked = true, description = "Pause" })
--hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("swayosd-client --playerctl play-pause"), { locked = true, description = "Play" })
--hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("swayosd-client --playerctl previous"), { locked = true, description = "Previous track" })

--hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("swayosd-client --output-volume raise"), { locked = true, repeating = true, description = "Volume up" })
--hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("swayosd-client --output-volume lower"), { locked = true, repeating = true, description = "Volume down" })
--hl.bind("XF86AudioMute", hl.dsp.exec_cmd("swayosd-client --output-volume mute-toggle"), { locked = true, repeating = true, description = "Mute" })
--hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("swayosd-client --input-volume mute-toggle"), { locked = true, repeating = true, description = "Mute microphone" })

--hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("swayosd-client --brightness raise"), { locked = true, repeating = true, description = "Brightness up" })
--hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("swayosd-client --brightness lower"), { locked = true, repeating = true, description = "Brightness down" })

