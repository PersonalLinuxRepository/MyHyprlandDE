dependencies = {}
modules = {
    hardware = {
        "monitors",
        "mouse",
        "keyboard",
    },

    views = {
        "layout",
        "workspaces",
        "window",
        "misc",
    },

    behavior = {
        "animations",
        "curves",
    },

    bindings = {
        "generalKey",
        "media",
        "notification",
    }

    for group,files in pairs(modules) do
        dependencies[group] = {}
        for _,file in ipairs(files) do
           -- module = require(group .. "." .. file)
            dependencies[group][file] = require(group .. "." .. file)
        end
}

return dependencies