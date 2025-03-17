-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Fonts:
config.font = wezterm.font('HackNerdFont', {weight = 'Bold'})
config.font_size = 14.5


-- Color scheme / looks
config.color_scheme = 'Fairy Floss (Gogh)'
config.enable_tab_bar = false
config.window_background_opacity = 0.82
config.text_background_opacity = 1.0
config.window_padding = { left = "1cell", right = "1cell" , top = "0.5cell", bottom = "0cell", }
-- Other config options
config.default_prog = { '/bin/fish' }

-- Key binds
config.disable_default_key_bindings = true
config.keys = {
-- Clipboard
{ key = 'C', mods = 'CTRL|SHIFT', action = wezterm.action.CopyTo 'ClipboardAndPrimarySelection', },
{ key = 'V', mods = 'CTRL|SHIFT', action = wezterm.action.PasteFrom 'Clipboard', },
-- Pane switches
{ key = '1', mods = 'ALT', action = wezterm.action.ActivatePaneByIndex(0) },
{ key = '2', mods = 'ALT', action = wezterm.action.ActivatePaneByIndex(1) },
{ key = '3', mods = 'ALT', action = wezterm.action.ActivatePaneByIndex(2) },
{ key = 'q', mods = 'ALT', action = wezterm.action.CloseCurrentPane { confirm = true }, },
{ key = 'a', mods = 'ALT', action = wezterm.action.SplitPane { direction = 'Right' }, },
}

-- and finally, return the configuration to wezterm
return config

