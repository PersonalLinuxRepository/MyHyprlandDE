command = require("utils.commands.command")
system = {}

function system.launchWaybar()
  return command.exec("waybar")
end

function system.nmApplet()
 return command.exec("nm-applet")
end

function system.launchSway()
  return command.exec("sway")
end

function system.launchTerminal()
  return command.exec("kitty")
end

function system.launchFileManager()
  return command.exec("dolphin")
end

function system.launchMenu()
  return command.exec("hyprlauncher")
end


function system.launchHyprshot()
  return command.exec(os.getenv("HOME") .. "/.local/bin/hyprshot")
end

function system.launchBrowser()
  return command.exec("firefox")
end

function system.closeHyprlandSession()
  return command.exec("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")
end

return system
