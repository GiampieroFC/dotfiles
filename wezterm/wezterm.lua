local wezterm = require("wezterm")
local mux = wezterm.mux

wezterm.on(
    "gui-startup",
    function()
        local tab, pane, window = mux.spawn_window {}
        window:gui_window():maximize()
    end
)

local config = {}

-- Window
config.window_padding = {
    left = 5,
    right = 5,
    top = 5,
    bottom = 60,
}

-- Cursor |
config.default_cursor_style = "BlinkingBar"

-- Opacity
config.window_background_opacity = 0.7

-- Title bar
config.window_decorations = "NONE"

-- Font
config.font = wezterm.font("FiraCode Nerd Font Mono", { weight = 450, stretch = "Normal", style = "Normal" }) -- (AKA: FiraCode Nerd Font Mono Ret) /usr/share/fonts/TTF/FiraCodeNerdFontMono-Retina.ttf, FontConfig
config.font_size = 9.0

-- Tabs
-- config.enable_tab_bar = false
config.use_fancy_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true

-- Theme
-- config.color_scheme = "nord"
-- config.color_scheme = "Flexoki Dark"
-- config.color_scheme = 'Catppuccin Mocha (Gogh)'
-- config.color_scheme = 'Oxocarbon Dark'
-- config.color_scheme = 'embark'
-- config.colors = require("colors.cyberdream")
config.color_scheme = 'ayu'
-- config.color_scheme = 'Ayu Dark (Gogh)'
-- config.color_scheme = 'Ayu Mirage'
-- config.color_scheme = 'Ayu Mirage (Gogh)'
-- config.color_scheme = 'Azu (Gogh)'

return config
