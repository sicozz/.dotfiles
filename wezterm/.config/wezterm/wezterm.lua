-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'AdventureTime'
-- config.font = wezterm.font 'Fixedsys Excelsior'
config.font = wezterm.font 'MesloLGS NF'
config.font_size = 11.0

config.audible_bell = 'Disabled'

-- Monocromes
-- ----------
-- config.color_scheme = 'Green Screen (base16)'
-- config.color_scheme = 'Icy Dark (base16)'
-- config.color_scheme = 'Mono (terminal.sexy)'

config.color_scheme = 'Kanagawa (Gogh)'
config.colors = {
    background = '#0E0E18'
}
-- config.color_scheme = 'Dark Violet (base16)'
-- config.color_scheme = 'Solarized Dark - Patched'
-- config.colors = {
--     background = '#000000'
-- }

config.enable_tab_bar = false
config.window_background_opacity = 0.95

-- and finally, return the configuration to wezterm
return config