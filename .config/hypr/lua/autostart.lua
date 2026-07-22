-- lua/autostart.lua
-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

hl.on("hyprland.start", function()
	hl.exec_cmd(bar)
	hl.exec_cmd(notifier)
	hl.exec_cmd(wallpaperDaemon) -- reads ~/.config/hypr/hyperpaper.conf
	hl.exec_cmd("nm-applet --indicator")
	hl.exec_cmd("blueman-applet")
end)
