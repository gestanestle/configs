local wezterm = require("wezterm")
local config = {}
-- You can specify some parameters to influence the font selection;
-- for example, this selects a Bold, Italic font variant.
config.font = wezterm.font("JetBrains Mono", { weight = "Bold", italic = true })
config.color_scheme = "tokyonight_storm"
config.text_background_opacity = 1.0
config.window_background_opacity = 0.8
config.window_decorations = "None"
config.hide_tab_bar_if_only_one_tab = true

config.keys = {
	{
		key = "n",
		mods = "SHIFT|CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
	{ key = "F9", mods = "ALT", action = wezterm.action.ShowTabNavigator },
}

config.mouse_bindings = {
	{
		event = { Drag = { streak = 1, button = "Left" } },
		mods = "SUPER",
		action = wezterm.action.StartWindowDrag,
	},
	{
		event = { Drag = { streak = 1, button = "Left" } },
		mods = "CTRL|SHIFT",
		action = wezterm.action.StartWindowDrag,
	},
}

return config
