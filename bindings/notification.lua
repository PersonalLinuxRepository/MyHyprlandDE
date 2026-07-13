local notification = require("utils.commands.notifications")

-- Notifications (swaync)
hl.bind("SUPER + COMMA", notification.closeLatest(), { description = "Dismiss last notification" })
hl.bind("SUPER + SHIFT + COMMA", notification.closeAll(), { description = "Dismiss all notifications" })
hl.bind("SUPER + CTRL + COMMA", notification.togglePanel(), { description = "Open notifications panel" })
hl.bind("SUPER + ALT + COMMA", notification.toggleDoNotDisturb(), { description = "Shut up and don't disturb me, pls" })