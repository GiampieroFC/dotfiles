local wezterm = require("wezterm")

-- ! si quires que cada vez que inicie, inicie maximizado, descomenta lo de abajo
-- ? "descomenta" existe esa palabra? está bien usada?
-- local mux = wezterm.mux

-- wezterm.on(
--     "gui-startup",
--     function()
--         local tab, pane, window = mux.spawn_window {}
--         window:gui_window():maximize()
--     end
-- )

local config = {}

-- Window
config.window_padding = {
  left = 5,
  right = 5,
  top = 5,
  bottom = 5,
}

-- Cursor |
config.default_cursor_style = "BlinkingBar"

-- Opacity
config.window_background_opacity = 0.95

-- Title bar
-- config.window_decorations = "NONE"

-- Font
config.font = wezterm.font(
  "FiraCode Nerd Font Mono Ret",
  {
    weight = 450,
    stretch = "Normal",
    style = "Normal"
  }
)
-- (AKA: FiraCode Nerd Font Mono Ret) /usr/share/fonts/TTF/FiraCodeNerdFontMono-Retina.ttf, FontConfig
config.font_size = 11.0

-- Tabs
-- config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

-- Theme
-- config.color_scheme = "nord"
-- config.color_scheme = "Flexoki Dark"
-- config.color_scheme = 'Catppuccin Mocha (Gogh)'
-- config.color_scheme = 'Oxocarbon Dark'
-- config.color_scheme = 'embark'
-- config.colors = require("colors.cyberdream")
-- config.color_scheme = 'ayu'
-- config.color_scheme = 'Ayu Dark (Gogh)'
-- config.color_scheme = 'Ayu Mirage'
-- config.color_scheme = 'Ayu Mirage (Gogh)'
-- config.color_scheme = 'Azu (Gogh)'
-- config.color_scheme = 's3r0 modified (terminal.sexy)'
config.color_scheme = 'Sandcastle (base16)'


return config
