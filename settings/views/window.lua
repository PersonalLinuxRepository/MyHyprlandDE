-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
    general = {
      gaps_in  = 5,
      gaps_out = 20,
      border_size = 1,

   col = {
    active_border = {
        colors = {
            "rgba(21,30,123,0.9)",
            "rgba(10,13,82,0.95)",
            "rgba(3,3,25,1)"
        },
        angle = 90
    },

    inactive_border = "rgba(1,0,7,0.9)",
},
    resize_on_border = true,
    allow_tearing = true,
    layout = "dwindle",
},

    animations = {
        enabled = true,
    },
})