local wezterm = require 'wezterm'
local config = {}
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- config.font = wezterm.font 'MesloLGS NF'
config.font = wezterm.font 'JetBrains Mono'
config.font_size = 11.0
config.audible_bell = 'Disabled'

-- Colorscheme: darkrose
config.colors = {
    background = "#000000",
    foreground = "#c9c1c9",

    cursor_bg = "#9f9f9f",
    cursor_border = "#9f9f9f",

    ansi = {
        "#000000", "#f85149", "#429e44", "#f0883e",
        "#3c6490", "#8b2950", "#6e9e9e", "#8b8b8b",
    },
    brights = {
        "#101010", "#9e4244", "#6e9e42", "#a26b35",
        "#44429e", "#b76e79", "#36d6d6", "#ededed",
    },
}

-- Colorscheme: Kanagawa
-- config.color_scheme = 'Kanagawa (Gogh)'
-- config.colors = {
--     background = '#0E0E18'
-- }

config.enable_tab_bar = false
-- config.window_background_opacity = 0.95

-- Monocromes
-- ----------
-- config.color_scheme = 'Green Screen (base16)'
-- config.color_scheme = 'Icy Dark (base16)'
-- config.color_scheme = 'Mono (terminal.sexy)'
-- config.color_scheme = 'Dark Violet (base16)'


config.warn_about_missing_glyphs = false

-- and finally, return the configuration to wezterm
return config
