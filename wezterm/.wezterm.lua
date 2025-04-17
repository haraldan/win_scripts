-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

local mux = wezterm.mux

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

--config.color_scheme = 'AdventureTime'
config.hide_tab_bar_if_only_one_tab = true

-- and finally, return the configuration to wezterm
return config