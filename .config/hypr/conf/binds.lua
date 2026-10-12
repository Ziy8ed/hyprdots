-- conf/binds.lua — keybindings
local programs = require("conf.programs")
local M        = "SUPER"

-- core
hl.bind(M .. " + Return",       hl.dsp.exec_cmd(programs.terminal))
hl.bind(M .. " + S",            hl.dsp.exec_cmd(programs.launcher .. " -t"))
hl.bind(M .. " + C",            hl.dsp.window.close())
hl.bind(M .. " + F",            hl.dsp.window.float({ action = "toggle" }))
hl.bind(M .. " + Z",            hl.dsp.window.fullscreen({ mode = 0 }))
hl.bind(M .. " + P",            hl.dsp.window.pseudo())
hl.bind(M .. " + T",            hl.dsp.layout("togglesplit"))

-- focus
hl.bind(M .. " + left",         hl.dsp.focus({ direction = "left"  }))
hl.bind(M .. " + right",        hl.dsp.focus({ direction = "right" }))
hl.bind(M .. " + up",           hl.dsp.focus({ direction = "up"    }))
hl.bind(M .. " + down",         hl.dsp.focus({ direction = "down"  }))

-- resize
hl.bind(M .. " + SHIFT + left",  hl.dsp.window.resize({ x = -20, y =   0, relative = true, repeating = true }))
hl.bind(M .. " + SHIFT + right", hl.dsp.window.resize({ x =  20, y =   0, relative = true, repeating = true }))
hl.bind(M .. " + SHIFT + up",    hl.dsp.window.resize({ x =   0, y = -20, relative = true, repeating = true }))
hl.bind(M .. " + SHIFT + down",  hl.dsp.window.resize({ x =   0, y =  20, relative = true, repeating = true }))

-- workspaces
for i = 1, 10 do
    local key = i % 10
    hl.bind(M .. " + " .. key,           hl.dsp.focus({ workspace = i }))
    hl.bind(M .. " + SHIFT + " .. key,   hl.dsp.window.move({ workspace = i }))
end

hl.bind(M .. " + mouse_down",    hl.dsp.focus({ workspace = "e+1" }))
hl.bind(M .. " + mouse_up",      hl.dsp.focus({ workspace = "e-1" }))

-- scratchpad
hl.bind(M .. " + SHIFT + S",     hl.dsp.window.move({ workspace = "special:magic" }))
hl.bind(M .. " + H",             hl.dsp.workspace.toggle_special("magic"))

-- mouse drag / resize
hl.bind(M .. " + mouse:272",     hl.dsp.window.drag(),   { mouse = true })
hl.bind(M .. " + mouse:273",     hl.dsp.window.resize(), { mouse = true })

-- audio
local locked = { locked = true }
local repeat_ = { locked = true, repeating = true }
hl.bind("XF86AudioRaiseVolume",   hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),  repeat_)
hl.bind("XF86AudioLowerVolume",   hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),        repeat_)
hl.bind("XF86AudioMute",          hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),       locked)
hl.bind("XF86AudioMicMute",       hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),     locked)
