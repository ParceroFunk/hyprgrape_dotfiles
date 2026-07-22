-- lua/appearance.lua
-- General + decoration settings. This is your main aesthetic/performance dial.
-- See https://wiki.hypr.land/Configuring/Basics/Variables/

hl.config({
	general = {
		gaps_in = 5,
		gaps_out = 20,
		border_size = 2,
		col = {
			active_border = {
				colors = {
					"rgba(eed8ffee)", "rgba(e5c3ffee)", "rgba(d7acf9ee)", "rgba(9252d5ee)",
					"rgba(7231b7ee)", "rgba(521e92ee)", "rgba(380e67ee)", "rgba(1f0142ee)",
				},
				angle = 45,
			},
			inactive_border = "rgba(595959aa)",
		},
		resize_on_border = false,
		allow_tearing = false,
		layout = "dwindle",
	},

	decoration = {
		rounding = 10,
		rounding_power = 2,
		active_opacity = 1.0,
		inactive_opacity = 1.0,

		-- Shadows and blur are the biggest GPU/battery cost in this file.
		-- Keep passes low (1) and size small for a low-consumption setup.
		shadow = {
			enabled = true,
			range = 4,
			render_power = 3,
			color = 0xee1a1a1a,
		},
		blur = {
			enabled = true,
			size = 3,
			passes = 1,
			vibrancy = 0.1696,
		},
	},

	animations = {
		enabled = true,
	},
})

-- Prefer dark theme on apps
-- Force GTK4 and modern apps to prefer dark mode
hl.env("GTK_THEME", "Adwaita-dark") -- Or your chosen dark GTK theme
hl.env("GSETTINGS_BACKEND", "dconf")

-- Route Qt theme styling through qt6ct/kvantum
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_QPA_PLATFORM", "wayland")
