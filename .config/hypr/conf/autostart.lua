-- conf/autostart.lua — startup daemons
local programs = require("conf.programs")

hl.on("hyprland.start", function()
    hl.exec_cmd(programs.launcher .. " -d")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("waybar")
    -- kill KDE notification service before starting swaync
    -- otherwise both fight over org.freedesktop.Notifications on DBus
    hl.exec_cmd("bash -c 'qdbus org.kde.plasma.Notifications /MainApplication quit 2>/dev/null; sleep 0.5 && swaync'")
end)
