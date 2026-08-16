-- hyprland.lua — entry point
-- https://wiki.hypr.land/Configuring/Start/

hl.monitor({ output = "", mode = "preferred", position = "auto", scale = 1 })
-- Replace "" with your output name once Hyprland is running:
-- hl.monitor({ output = "eDP-1", mode = "preferred", position = "auto", scale = 1 })

hl.env("XCURSOR_SIZE",    "24")
hl.env("HYPRCURSOR_SIZE", "24")

require("conf.look")
require("conf.input")
require("conf.binds")
require("conf.rules")
require("conf.autostart")
