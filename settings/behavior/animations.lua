local helper = require("helpers.animation")

helper.animation("global", true, 10, "default", nil, nil)
helper.animation("border", true, 5.39, "easeOutQuint", nil, nil)
helper.animation("windows", true, 4.79, nil, "easy", nil)
helper.animation("windowsIn", true, 4.1, nil, "easy", "popin 87%")
helper.animation("windowsOut", true, 1.49, "linear", nil, "popin 87%")

helper.animation("fadeIn", true, 1.73, "almostLinear", nil, nil)
helper.animation("fadeOut", true, 1.46, "almostLinear", nil, nil)
helper.animation("fade", true, 3.03, "quick", nil, nil)

helper.animation("layers", true, 3.81, "easeOutQuint", nil, nil)
helper.animation("layersIn", true, 4, "easeOutQuint", nil, "fade")
helper.animation("layersOut", true, 1.5, "linear", nil, "fade")

helper.animation("fadeLayersIn", true, 1.79, "almostLinear", nil, nil)
helper.animation("fadeLayersOut", true, 1.39, "almostLinear", nil, nil)

helper.animation("workspaces", true, 1.94, "almostLinear", nil, "fade")
helper.animation("workspacesIn", true, 1.21, "almostLinear", nil, "fade")
helper.animation("workspacesOut", true, 1.94, "almostLinear", nil, "fade")

helper.animation("zoomFactor", true, 7, "quick", nil, nil)