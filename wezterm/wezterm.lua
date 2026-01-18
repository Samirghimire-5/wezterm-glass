local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- ---------------------------------------------------------
-- 1. PADDING & DECORATIONS
-- ---------------------------------------------------------
config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }
config.enable_tab_bar = false
config.window_decorations = "NONE" -- Removes title bar for that clean Linux look
config.front_end = "OpenGL" --"WebGpu for Faster rendering and better "glow"

-- ---------------------------------------------------------
-- 2. GLASSY AESTHETIC (Linux Specific)
-- ---------------------------------------------------------
config.window_background_opacity = 0.90
config.inactive_pane_hsb = {
	brightness = 0.3, -- Dims inactive splits for better focus
	saturation = 1.0,
}

-- gradients
config.window_background_gradient = {
	-- Vertical gradient goes from top to bottom
	orientation = "Vertical",
	colors = {
		"#020202", -- Absolute Black at the top
		"#050505", -- Slightly lighter Charcoal
		"#001122", -- A tiny hint of Deep Midnight Blue at the bottom
	},
	interpolation = "Linear",
}

-- Adjust the brightness of the overall background
config.window_background_image_hsb = {
	brightness = 0.1, -- Keeps it dark so text is easy to read
	hue = 1.0,
	saturation = 1.0,
}

------------------------------------------------------------
-- 3. THEME & COLORS (Deep Black & Cyan Blue)
-- ---------------------------------------------------------
config.colors = {
	background = "#020202", -- Absolute deep black
	foreground = "#ffffff",
	cursor_bg = "#00dfff", -- Neon Cyan/Blue
	cursor_fg = "#000000",
	split = "#004466", -- Subtle blue split lines

	-- tab_bar = {
	-- 	background = "rgba(0, 0, 0, 0)",
	-- 	active_tab = { bg_color = "#00aaff", fg_color = "#000000", intensity = "Bold" },
	-- 	inactive_tab = { bg_color = "#0a0a0a", fg_color = "#444444" },
	-- },
}

------------------------------------------------------------
-- 4. CURSOR & FONTS
-- ---------------------------------------------------------
config.default_cursor_style = "BlinkingBar"
config.cursor_blink_rate = 500
-- Set your font (Ubuntu comes with good ones, but JetBrainsMono Nerd Font is best)
config.font = wezterm.font("JetBrains Mono")
config.font_size = 14.0

------------------------------------------------------------
-- Keyboards keymaps and mouse
-- ---------------------------------------------------------
config.keys = {
	{ key = "g", mods = "CTRL|SHIFT", action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }) },
	{ key = "h", mods = "CTRL|SHIFT", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ key = "w", mods = "CTRL|SHIFT", action = wezterm.action.CloseCurrentPane({ confirm = false }) },
	-- Quick Workspace Switcher (Very cool for multitasking)
	{ key = "s", mods = "CTRL|SHIFT", action = wezterm.action.ShowLauncherArgs({ flags = "WORKSPACES" }) },
	-- Pane Navigation
	{ key = "h", mods = "CTRL", action = wezterm.action.ActivatePaneDirection("Left") },
	{ key = "l", mods = "CTRL", action = wezterm.action.ActivatePaneDirection("Right") },
	{ key = "k", mods = "CTRL", action = wezterm.action.ActivatePaneDirection("Up") },
	{ key = "j", mods = "CTRL", action = wezterm.action.ActivatePaneDirection("Down") },
	{ key = "L", mods = "CTRL|SHIFT", action = wezterm.action.ActivateCopyMode },
	-- pane swapping / moving pane position

	-- Rotate panes (reorders layout)
	{ key = "r", mods = "ALT", action = wezterm.action.RotatePanes("Clockwise") },
	{ key = "R", mods = "ALT|SHIFT", action = wezterm.action.RotatePanes("CounterClockwise") },
}

config.mouse_bindings = {
	{
		event = { Down = { streak = 1, button = "Left" } },
		mods = "ALT",
		action = wezterm.action.StartWindowDrag,
	},
}

return config
