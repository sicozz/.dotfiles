local wezterm = require 'wezterm'
local config = {}
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- config.font = wezterm.font 'MesloLGS NF'
config.font_size = 11.0
config.audible_bell = 'Disabled'

-- Colorscheme: Spaceduck
config.colors = {
    background = "#0f111b",
    foreground = "#ecf0c1",

    cursor_bg = "#ecf0c1",
    cursor_border = "#ecf0c1",

    ansi = {
        "#000000", "#e33400", "#5ccc96", "#b3a1e6",
        "#00a3cc", "#f2ce00", "#7a5ccc", "#686f9a",
    },
    brights = {
        "#686f9a", "#e33400", "#5ccc96", "#b3a1e6",
        "#00a3cc", "#f2ce00", "#7a5ccc", "#f0f1ce",
    },
}
--

-- config.color_scheme = 'Kanagawa (Gogh)'
-- config.colors = {
--     background = '#0E0E18'
-- }
-- config.color_scheme = 'Solarized Dark - Patched'
-- config.colors = {
--     background = '#000000'
-- }

config.enable_tab_bar = false
config.window_background_opacity = 0.975

-- Monocromes
-- ----------
-- config.color_scheme = 'Green Screen (base16)'
-- config.color_scheme = 'Icy Dark (base16)'
-- config.color_scheme = 'Mono (terminal.sexy)'
-- config.color_scheme = 'Dark Violet (base16)'


config.warn_about_missing_glyphs = false

-- and finally, return the configuration to wezterm
return config
