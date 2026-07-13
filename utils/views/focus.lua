local focus = {}

function focus.focusDirection(currentDirection)
    return hl.dsp.focus({ direction = currentDirection})
end

return focus