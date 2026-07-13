local monitors = require("settings.hardware.monitors")
local mouse = require("settings.hardware.mouse")
local keyboard = require("settings.hardware.keyboard")

local layout = require("settings.views.layout")
local workspaces = require("settings.views.workspaces")
local window = require("settings.views.window")
local animations = require("settings.views.animations")
local curves = require("settings.views.curves")
local misc = require("settings.views.misc")

local bindings = require("bindings.generalKey") 
local mediaBindings = require("bindings.media")
local notificationBindings = require("bindings.notification")

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
hl.on("hyprland.start", function ()
    hl.exec_cmd("kitty")
    hl.exec_cmd("nm-applet")
    hl.exec_cmd("waybar & hyprpaper")
    h1.exec_cmd("sway")
end)


