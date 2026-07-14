local animation = {}
function animation.animation(leaf, enabled, speed, bezier, spring, style)
    return hl.animation({ 
           leaf = leaf, 
           enabled = enabled, 
           speed = speed, 
           bezier = bezier, 
           spring = spring, 
           style = style
    })
end

return animation