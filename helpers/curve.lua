local curve = {}

function curve.bezier(name, points)
    hl.curve(name, {
        type = "bezier",
        points = points
    })
end


function curve.spring(name, config)
    hl.curve(name, {
        type = "spring",
        mass = config.mass,
        stiffness = config.stiffness,
        dampening = config.dampening
    })
end

return curve