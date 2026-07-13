local command = require("utils.commands.command")
local media = {}

function media.raiseVolume()
    return command.exec("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+")
end

function media.lowerVolume()
    return command.exec("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-")
end

function media.toggleMuteVolume()
    return command.exec("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle")
end

function media.toggleMuteMic()
    return command.exec("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle")
end    

function media.playTrack()
    return command.exec("playerctl play")
end

function media.nextMediaTrack()
    return command.exec("playerctl next")
end

function media.previousMediaTrack()
    return command.exec("playerctl previous")
end

function media.playPauseMedia()
    return command.exec("playerctl play-pause")
end

function media.setMuteVolume()
    return command.exec("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle")
end


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

return media