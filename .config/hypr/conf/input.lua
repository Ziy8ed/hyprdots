-- conf/input.lua — keyboard, mouse, touchpad
hl.config({
    input = {
        kb_layout  = "de",
        sensitivity = 0,
        follow_mouse = 1,
        touchpad = {
            natural_scroll       = true,
            disable_while_typing = true,
        },
    },
})

-- 3-finger swipe to switch workspaces (ThinkPad touchpad)
hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })

-- Per-device overrides: find names with `hyprctl devices`
-- hl.device({ name = "your-mouse-name", sensitivity = -0.3 })
