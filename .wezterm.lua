local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("FiraCode Nerd Font")
config.font_size = 12

config.color_scheme = "Catppuccin Mocha"

config.cursor_thickness = 2
config.underline_thickness = 5

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

config.force_reverse_video_cursor = true

return config
