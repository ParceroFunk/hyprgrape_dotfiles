-- lua/monitors.lua
-- See https://wiki.hypr.land/Configuring/Basics/Monitors/

-- Fallback rule for any monitor not matched below.
-- Find your outputs with: hyprctl monitors
hl.monitor({
	output = "",
	mode = "preferred",
	position = "auto",
	scale = "auto",
})

-- HDMI-A-1: auto-placed to the left of other monitors
hl.monitor({
	output = "HDMI-A-1",
	mode = "preferred",
	position = "auto-left",
	scale = "auto",
})
