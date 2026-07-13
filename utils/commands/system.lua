local command = require("utils.commands.command")
local system = {}

function system.launchHyprshot()
    return command.exec(os.getenv("HOME") .. "/.local/bin/hyprshot")
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

function system.closeHyprlandSession()
    return command.exec("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")
end

return system