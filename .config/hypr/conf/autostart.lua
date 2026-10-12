-- conf/autostart.lua — startup daemons
local programs = require("conf.programs")

hl.on("hyprland.start", function()
    hl.exec_cmd(programs.launcher .. " -d")
end)
