-- conf/look.lua — appearance, animations, layout
local colors = require("conf.colors")

local function rgba(hex, alpha)
    return string.format("rgba(%s%02x)", hex, alpha)
end

hl.config({
    general = {
        gaps_in          = 4,
        gaps_out         = 8,
        border_size      = 1,
        col = {
            active_border   = rgba(colors.accent,     235),
            inactive_border = rgba(colors.border_dim, 140),
        },
        resize_on_border = true,
        allow_tearing    = false,
        layout           = "dwindle",
    },

    decoration = {
        rounding         = 6,
        rounding_power   = 2,
        active_opacity   = 1.0,
        inactive_opacity = 0.96,
        shadow = {
            enabled      = true,
            range        = 8,
            render_power = 3,
            color        = 0xb01a1a1a,
        },
        blur = {
            enabled  = true,
            size     = 10,
            passes   = 3,
            vibrancy = 0.15,
        },
    },

    animations = { enabled = true },

    dwindle = { preserve_split = true },

    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo   = true,
    },
})

hl.curve("smooth", { type = "bezier", points = { { 0.4, 0 }, { 0.2, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0,   0 }, { 1,   1 } } })

hl.animation({ leaf = "global",      enabled = true, speed = 6, bezier = "smooth" })
hl.animation({ leaf = "border",      enabled = true, speed = 8, bezier = "linear" })
hl.animation({ leaf = "windows",     enabled = true, speed = 4, bezier = "smooth", style = "popin 92%" })
hl.animation({ leaf = "windowsIn",   enabled = true, speed = 3, bezier = "smooth", style = "popin 92%" })
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 3, bezier = "smooth", style = "popin 92%" })
hl.animation({ leaf = "fade",        enabled = true, speed = 4, bezier = "smooth" })
hl.animation({ leaf = "layers",      enabled = true, speed = 4, bezier = "smooth", style = "fade" })
hl.animation({ leaf = "workspaces",  enabled = true, speed = 3, bezier = "smooth", style = "fade" })
