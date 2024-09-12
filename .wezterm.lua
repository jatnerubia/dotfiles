-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.font = wezterm.font("FiraCode Nerd Font")
config.font_size = 14

config.colors = {
	background = "#181818",
}

config.cursor_thickness = 2
config.underline_thickness = 5

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

config.window_background_opacity = 0.85
-- config.macos_window_background_blur = 100

config.force_reverse_video_cursor = true

-- and finally, return the configuration to wezterm
return config
