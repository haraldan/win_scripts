-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

local mux = wezterm.mux

-- start maximized
wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

-- Font
config.font = wezterm.font("CaskaydiaMono Nerd Font")

-- Window settings
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_frame = { active_titlebar_bg = "#000000", button_bg = "000000" }
config.colors = {
	tab_bar = {
		new_tab = {
			bg_color = "#222222",
			fg_color = "white",
		},
	},
}
config.window_padding = {
	left = 2,
	right = 2,
	top = 0,
	bottom = 0,
}
config.window_close_confirmation = 'NeverPrompt'

-- Key mappings
config.keys = {
	{
		key = "r",
		mods = "ALT|SHIFT",
		action = wezterm.action.ReloadConfiguration,
	},
	{
		key = "t",
		mods = "ALT|SHIFT",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
	{
		key = "x",
		mods = "ALT|SHIFT",
		action = wezterm.action.CloseCurrentTab({ confirm = true }),
	},
	{
		key = "n",
		mods = "ALT|SHIFT",
		action = wezterm.action.ActivateTabRelative(1),
	},
	{
		key = "p",
		mods = "ALT|SHIFT",
		action = wezterm.action.ActivateTabRelative(-1),
	},
}

config.mouse_bindings = {
	{
		event = { Down = { streak = 1, button = "Right" } },
		mods = "NONE",
		action = wezterm.action.PasteFrom("PrimarySelection"),
	},
	{
		event = { Down = { streak = 1, button = "Right" } },
		mods = "SHIFT",
		action = wezterm.action.PasteFrom("PrimarySelection"),
	},
}

return config
