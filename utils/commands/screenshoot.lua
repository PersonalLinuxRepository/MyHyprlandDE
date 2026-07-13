local command = require("utils.commands.command")
local screenshot = {}

function screenshot.saveScreenshot()
    return command.exec("[[bash -c 'grim ~/Изображения/Screenshot-$(date +%Y-%m-%d_%H-%M-%S).png']]")
end

function screenshot.saveScreenshotToClipboard()
    return command.exec('grim -g "$(slurp -d)" - | wl-copy')
end

return screenshot