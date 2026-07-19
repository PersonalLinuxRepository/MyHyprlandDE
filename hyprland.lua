curves = require("settings.behavior.curves")
animations = require("settings.behavior.animations")
command = require("utils.commands.system")
monitors = require("settings.hardware.monitors")
mouse = require("settings.hardware.mouse")
keyboard = require("settings.hardware.keyboard")

layout = require("settings.views.layout")
workspaces = require("settings.views.workspaces")
window = require("settings.views.window")
decoration = require("settings.views.decoration")
misc = require("settings.views.misc")
bindings = require("bindings.generalKey") 
mediaBindings = require("bindings.media")
notificationBindings = require("bindings.notification")

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
hl.on("hyprland.start", function ()
   hl.exec_cmd("waybar --style ~/.config/hypr/styles/waybar/waybar.css")
   hl.exec_cmd("hyprpaper")
   hl.exec_cmd("kitty")
   hl.exec_cmd("nm-applet")
end)


