-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
    general = {
      gaps_in  = 5,
      gaps_out = 20,
      border_size = 1,

    col = {
        active_border = {
            colors = {
             "rgba(ff007f99)",
             "rgba(00000000)",
             "rgba(00f0ff99)",
            },
            angle = 360
        },
        inactive_border = "rgba(313244ff)",
    },
    resize_on_border = true,
    allow_tearing = true,
    layout = "dwindle",
},

    decoration = {
        rounding       = 10,
        rounding_power = 2,
        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled      = true,
            range        = 4,
            render_power = 3,
            color        = 0xee1a1a1a,
        },

        blur = {
            enabled   = true,
            size      = 3,
            passes    = 1,
            vibrancy  = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },
})