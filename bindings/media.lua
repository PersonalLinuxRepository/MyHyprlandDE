local media = require("utils.commands.media")
local screen = require("utils.commands.screen")

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", media.raiseVolume(), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", media.lowerVolume(),  { locked = true, repeating = true })
hl.bind("XF86AudioMute",        media.setMuteVolume(), { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     media.toggleMuteMic(),  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  screen.increaseBrightness(),{ locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",screen.decreaseBrightness(),{ locked = true, repeating = true })


-- Requires playerctl
hl.bind("XF86AudioNext",  media.nextMediaTrack(),{ locked = true })
hl.bind("XF86AudioPause", media.playPauseMedia(), { locked = true })
hl.bind("XF86AudioPlay",  media.playTrack(), { locked = true })
hl.bind("XF86AudioPrev",  media.previousMediaTrack(),{ locked = true })