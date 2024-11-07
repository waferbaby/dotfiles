local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "Molokai"
config.enable_tab_bar = false
config.font_size = 14
config.keys = {
	{
		key = "LeftArrow",
		mods = "CTRL|SHIFT",
		action = wezterm.action.DisableDefaultAssignment,
	},

	{
		key = "RightArrow",
		mods = "CTRL|SHIFT",
		action = wezterm.action.DisableDefaultAssignment,
	},

	{
		key = "UpArrow",
		mods = "CTRL|SHIFT",
		action = wezterm.action.DisableDefaultAssignment,
	},

	{
		key = "DownArrow",
		mods = "CTRL|SHIFT",
		action = wezterm.action.DisableDefaultAssignment,
	},
}

return config
