local command= require("utils.commands.command")
local notification = {}

function notification.closeLatest()
    return command.exec("swaync-client --close-latest")
end

function notification.closeAll()
    return command.exec("swaync-client --close-all")
end

function notification.togglePanel()
    return command.exec("swaync-client --toggle-panel")
end

function notification.toggleDoNotDisturb()
    return command.exec(
        "swaync-client --toggle-dnd && " ..
        "swaync-client --get-dnd | grep -q 'true' && " ..
        "notify-send 'Silenced notifications' || " ..
        "notify-send 'Enabled notifications'")
end

return notification