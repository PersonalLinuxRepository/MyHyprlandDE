local layout = require("utils.views.layout")
local workspace = require("utils.views.workspace")
local window = require("utils.views.window")  
local focus = require("utils.views.focus")

local system = require("utils.commands.system")
local screenshot = require("utils.commands.screenshoot")
local media = require("utils.commands.media")
local screen = require("utils.commands.screen")
local notification = require("utils.commands.notifications")


local hyprshot = os.getenv("HOME") .. "/.local/bin/hyprshot"
local superKey = "SUPER" -- Sets "Windows" key as main modifier
local shiftKey = "SHIFT"
local alt_l = "Alt_L"


-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind("F1", system.launchTerminal())
hl.bind("Print", screenshot.saveScreenshotToClipboard())
hl.bind(shiftKey .. "+ Print" , screenshot.saveScreenshot()) 

local closeWindowBind = hl.bind(alt_l .. "+F4", window.windowClose())
closeWindowBind:set_enabled(true)

hl.bind(superKey .. " + M", system.closeHyprlandSession())
hl.bind(superKey .. " + E", system.launchFileManager())
hl.bind(superKey .. " + R", system.launchMenu())
hl.bind(superKey .. " + V", window.windowToggleFloating())
hl.bind(superKey .. " + P", window.windowPseudo())
hl.bind(superKey .. " + X", window.hideWindow)
hl.bind(superKey .. " + Tab",window.RestoreWindow)
hl.bind(superKey .. " + J",  layout.toggleSplit())


-- Move focus with superKey + arrow keys
hl.bind(superKey .. " + left",  focus.focusDirection("left"))
hl.bind(superKey .. " + right", focus.focusDirection("right"))
hl.bind(superKey .. " + up",    focus.focusDirection("up"))
hl.bind(superKey .. " + down",  focus.focusDirection("down"))

-- Switch workspaces with superKey + [0-9]
-- Move active window to a workspace with superKey + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 10
    hl.bind(superKey .. " + " .. key,workspace.addNewWorkspace(i))
    hl.bind(superKey .. " + SHIFT + " .. key, window.moveCurrentWindowToWorkspace(i))
end

-- Scroll through existing workspaces with superKey + scroll
hl.bind(superKey .. "+ mouse_down", workspace.nextWorkspace())
hl.bind(superKey .. "+ mouse_up",   workspace.previousWorkspace())

-- Move/resize windows with superKey + LMB/RMB and dragging
hl.bind(superKey .. " + mouse:272", window.windowDrag(), { mouse = true })
hl.bind(superKey .. " + mouse:273", window.windowResize(), { mouse = true })


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

-- Notifications (swaync)
hl.bind("SUPER + COMMA", notification.closeLatest(), { description = "Dismiss last notification" })
hl.bind("SUPER + SHIFT + COMMA", notification.closeAll(), { description = "Dismiss all notifications" })
hl.bind("SUPER + CTRL + COMMA", notification.togglePanel(), { description = "Open notifications panel" })
hl.bind("SUPER + ALT + COMMA", notification.toggleDoNotDisturb(), { description = "Shut up and don't disturb me, pls" })




