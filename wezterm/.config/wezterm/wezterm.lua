local wezterm = require 'wezterm'
local config = {}
if wezterm.config_builder then
    config = wezterm.config_builder()
end

-- config.font = wezterm.font 'MesloLGS NF'
config.font = wezterm.font 'JetBrains Mono'
config.font_size = 11.0
config.audible_bell = 'Disabled'


-- Colorscheme: Solarized Osaka
config.colors = {
    background = "#000304",
    foreground = "#8f9ea0",

    cursor_bg = "#708284",
    cursor_border = "#708284",

    ansi = {
        "#002831", "#d11c24", "#738a05", "#a57706",
        "#2176c7", "#c61c6f", "#259286", "#eae3cb"
    },
    brights = {
        "#475b62", "#bd3613", "#475b62", "#536870",
        "#259286", "#c61c6f", "#819090", "#fcf4dc"
    },
}

-- config.color_scheme = 'Solarized Dark - Patched'

config.enable_tab_bar = false
config.window_background_opacity = 0.95

-- Monocromes
-- ----------
-- config.color_scheme = 'Green Screen (base16)'
-- config.color_scheme = 'Icy Dark (base16)'
-- config.color_scheme = 'Mono (terminal.sexy)'
-- config.color_scheme = 'Dark Violet (base16)'


config.warn_about_missing_glyphs = false

-- and finally, return the configuration to wezterm
return config
