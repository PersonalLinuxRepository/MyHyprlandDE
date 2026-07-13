local command=require("utils.commands.command")
local screen={}

function screen.increaseBrightness()
    return command.exec("brightnessctl -e4 -n2 set 5%+")
end

function screen.decreaseBrightness()
    return command.exec("brightnessctl -e4 -n2 set 5%-")
end

return screen