-- lua/layouts.lua
-- Only the block matching general.layout (set in appearance.lua) actually applies.

-- https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/
hl.config({
	dwindle = {
		preserve_split = true,
	},
})

-- https://wiki.hypr.land/Configuring/Layouts/Master-Layout/
hl.config({
	master = {
		new_status = "master",
	},
})

-- https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/
hl.config({
	scrolling = {
		fullscreen_on_one_column = true,
	},
})

hl.config({
	misc = {
		force_default_wallpaper = -1,
		disable_hyprland_logo = false,
	},
})
