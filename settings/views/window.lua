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

    animations = {
        enabled = true,
    },
})