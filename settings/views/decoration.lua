hl.config({
    decoration = {
     -- border_size = 0,
        active_opacity = 1.0,
        inactive_opacity = 1.0,
        rounding    = 13,
        blur = {
            enabled = true,
            size = 1,
            passes = 2,
            ignore_opacity = true,
            vibrancy  = 0.1696
        },
        shadow = {
            enabled = true,
            color = "rgba(8f00ffff)",
            range = 1,
            render_power = 5
        },
    },
})

hl.window_rule({
    match = {
        class = "^(waybar)$"
    },

    opacity=0.85,
    no_blur=true,
})