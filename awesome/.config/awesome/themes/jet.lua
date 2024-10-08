local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local theme = {}

-- A bunch of color
local lightBlue = "#89dceb"

local layoutIconPath = "~/.config/awesome/images/wibar/layout/"

theme.useless_gap = 5
theme.border_width = 0

theme.black = "#1e1e28"
theme.crust = "#11111b"
theme.surface_2 = "#585b70"
theme.orange = "#f9c096"
theme.green = "#b3e1a3"
theme.blue = "#a4b9ef"
theme.purple = "#c6aae8"

theme.border_normal = theme.surface_2
theme.border_focus = theme.orange
theme.border_marked = theme.purple

theme.font = "SF Pro Display, Bold 10"

theme.bg_normal = theme.black --"#222222"
theme.bg_focus = ""
theme.bg_urgent = "#f38ba8"
theme.bg_minimize = "#444444"
-- theme.bg_systray    = theme.bg_normal

theme.fg_normal = "white"
theme.fg_focus = "#f5e0dc" --lightwhite
theme.fg_urgent = "#ffffff"
theme.fg_minimize = "#ffffff"

theme.hotkeys_bg = theme.black
theme.hotkeys_fg = "white"
theme.hotkeys_description_font = "SF Pro Display"
theme.hotkeys_font = "SF Pro Display"
theme.hotkeys_opacity = 0.92
theme.hotkeys_modifiers_fg = "#d5c4a1" -- white
theme.hotkeys_label_bg = theme.black
theme.hotkeys_label_fg = "white"
theme.hotkeys_group_margin = 30

theme.calendar_month_border_width = 5
theme.calendar_month_border_color = theme.black
theme.calendar_focus_bg_color = "#fab387"
theme.calendar_focus_fg_color = theme.black
theme.calendar_month_opacity = 0.92

theme.taglist_fg_empty = "#a6e3a1"
theme.taglist_fg_occupied = "#eba0ac"
theme.taglist_fg_focus = "#f9e2af"
theme.taglist_bg_focus = ""

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]
-- theme.notification_margin = 5
theme.notification_bg = theme.black
theme.notification_fg = "white"
theme.notification_border_color = lightBlue

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
-- theme.menu_bg_normal = "#88a2b1"
-- menu_[border_color|border_width]

-- theme.menu_submenu_icon = themes_path.."default/submenu.png"
theme.menu_submenu = ""
theme.menu_height = dpi(20)
theme.menu_width = dpi(105)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
-- theme.bg_widget = "#cc0000"

-- You can use your own layout icons like this:
--theme.layout_fairh = themes_path.."default/layouts/fairhw.png"
theme.layout_fairv = layoutIconPath .. "fair-outline.svg"
theme.layout_tile = layoutIconPath .. "tile.svg"
theme.layout_tilebottom = layoutIconPath .. "tileBottom-outline.svg"
theme.layout_dwindle = layoutIconPath .. "spiralDwindle-outline.svg"
theme.layout_magnifier = layoutIconPath .. "magnifier-outline.svg"
theme.layout_max = layoutIconPath .. "max.svg"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(theme.menu_height, theme.bg_focus, theme.fg_focus)
-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = "~/.local/share/icons/WhiteSur-orange-dark/"

return theme
