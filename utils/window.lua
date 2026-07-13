local workspace = require("utils.workspace")
local window = {}

function window.getActiveWindow()
    return hl.get_active_window()
end

function window.HideWindow(window)
    hl.dispatch(hl.dsp.window.tag({
        tag = "minimized",
        window = window.getActiveWindow()
    }))

    hl.dispatch(hl.dsp.window.move({
        workspace = "special:minimized",
        follow = false
    }))
end 

function window.RestoreWindow(window)
    hl.dispatch(hl.dsp.window.move({
        workspace = workspace.getActiveWorkspace(),
        window = "tag:minimized"
    }))

    hl.dispatch(hl.dsp.window.clear_tags({
        window = "tag:minimized"
    }))
end

function window.scratchpadWindow(workspaceName)
    return hl.dsp.window.move({
        workspace = "special:magic",
    })
end


function window.windowDrag()
    return hl.dsp.window.drag()
end

function window.windowResize()
    return hl.dsp.window.resize()
end

return window