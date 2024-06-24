local wezterm = require("wezterm")
local act = wezterm.action

return {
	color_scheme = "Catppuccin Mocha",
	enable_tab_bar = false,
	font_size = 15.0,
	font = wezterm.font("BlexMono Nerd Font Propo", { weight = "Medium" }),
	macos_window_background_blur = 30,

	window_background_opacity = 1.0,
	window_decorations = "RESIZE",
	keys = {
		{
			key = "f",
			mods = "CTRL",
			action = wezterm.action.ToggleFullScreen,
		},
		{
			key = " ",
			mods = "CTRL",
			action = act.SendKey({
				key = " ",
				mods = "CTRL",
			}),
		},
		{
			key = "Space",
			mods = "CTRL|SHIFT",
			action = wezterm.action.DisableDefaultAssignment,
		},
		{
			key = "g",
			mods = "CMD",
			action = wezterm.action.DisableDefaultAssignment,
		},
	},
	mouse_bindings = {
		-- Ctrl-click will open the link under the mouse cursor
		{
			event = { Up = { streak = 1, button = "Left" } },
			mods = "CTRL",
			action = wezterm.action.OpenLinkAtMouseCursor,
		},
	},
}
