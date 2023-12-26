-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.action

-- This table will hold the configuration.
local config = {

	-- opacity
}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.window_decorations = "RESIZE"

-- This is where you actually apply your config choices

config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.8
config.use_fancy_tab_bar = false

-- config.default_prog = { "wsl" }
-- config.default_cwd = "/home/rjanzen/"
config.wsl_domains = {
	{
		name = "WSL:Ubuntu",
		distribution = "Ubuntu",
		username = "rjanzen",
		default_cwd = "/home/rjanzen/",
-- config.color_schemes = {
-- 	["Catppuccin Mocha"] = {
-- 		background = "black",
-- 	},
-- }
config.colors = {
	background = "black",
	tab_bar = {
		-- The color of the inactive tab bar edge/divider
		inactive_tab_edge = "#575757",
	},
}
config.default_domain = "WSL:Ubuntu"
config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 16
config.window_frame = {
	-- The font used in the tab bar.
	-- Roboto Bold is the default; this font is bundled
	-- with wezterm.
	-- Whatever font is selected here, it will have the
	-- main font setting appended to it to pick up any
	-- fallback fonts you may have used there.
	font = wezterm.font({ family = "JetBrainsMono Nerd Font", weight = "Bold" }),

	-- The size of the font in the tab bar.
	-- Default to 10.0 on Windows but 12.0 on other systems
	font_size = 10.0,

	-- The overall background color of the tab bar when
	-- the window is focused
	active_titlebar_bg = "#333333",

	-- The overall background color of the tab bar when
	-- the window is not focused
	inactive_titlebar_bg = "#333333",
}


config.keys = {
	{ key = "V", mods = "CTRL", action = act.PasteFrom("Clipboard") },
}
-- and finally, return the configuration to wezterm
return config
