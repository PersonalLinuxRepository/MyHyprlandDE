local workspace = {}

function workspace.getActiveWorkspace()
    return hl.get_active_workspace()
end

function workspace.toggleSpecial()
    return h1.dsp.workspace.toggle_special("magic")
end

function workspace.scrollThoughtWorkspace()
    return hl.dsp.window.move({ workspace = "special:magic" })
end

function workspace.nextWorkspace()
    return hl.dsp.focus({ workspace = "e+1" })
end

function workspace.previousWorkspace()
    return hl.dsp.focus({ workspace = "e-1" })
end

function workspace.addNewWorkspace(number)
    return hl.dsp.focus({ workspace = number })
end

return workspace