-- conf/rules.lua — window rules
hl.window_rule({
    name           = "suppress-maximize",
    match          = { class = ".*" },
    suppress_event = "maximize",
})

hl.window_rule({
    name  = "fix-xwayland-drags",
    match = { class = "^$", title = "^$", xwayland = true, float = true, fullscreen = false, pin = false },
    no_focus = true,
})

hl.window_rule({
    name  = "float-utilities",
    match = { class = "^(pavucontrol|blueman-manager|nm-connection-editor)$" },
    float = true,
})

hl.window_rule({
    name   = "float-nmtui",
    match  = { title = "^nmtui$" },
    float  = true,
    center = true,
})
