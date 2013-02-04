local prefix = config_dir .. "/theme"

theme = {}

theme.font          = "cure 8"
theme.taglist_font  = theme.font

theme.bg_normal     = "#000000"
theme.bg_focus      = theme.bg_normal
theme.bg_urgent     = "#ff3300"
theme.bg_minimize   = "#888888"

theme.fg_normal     = "#999999"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ffff00"
theme.fg_minimize   = "#000000"

theme.border_width  = 0
theme.border_normal = "#25221d"
theme.border_focus  = "#000000"
theme.border_marked = "#91231c"

theme.orig_gap      = 0
theme.small_gap     = 0
theme.gap_width     = theme.orig_gap

-- Others available:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

theme.bg_systray = "#000000"

-- Display the taglist bars
theme.taglist_squares_sel   = prefix .. "/taglist/squarefw.png"
theme.taglist_squares_unsel = prefix .. "/taglist/squarew.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_border_width = "0"
theme.menu_submenu_icon = prefix .. "/submenu.png"
theme.menu_height = 13
theme.menu_width  = 100

-- Define the image to load
theme.titlebar_close_button_normal = prefix .. "/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = prefix .. "/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = prefix .. "/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = prefix .. "/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = prefix .. "/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = prefix .. "/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = prefix .. "/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = prefix .. "/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = prefix .. "/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = prefix .. "/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = prefix .. "/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = prefix .. "/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = prefix .. "/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = prefix .. "/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = prefix .. "/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = prefix .. "/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = prefix .. "/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = prefix .. "/titlebar/maximized_focus_active.png"

-- Wallpaper is set in rc.lua
--theme.wallpaper = "whatever man"

-- You can use your own layout icons like this:
theme.layout_fairh = prefix .. "/layouts/fairhw.png"
theme.layout_fairv = prefix .. "/layouts/fairvw.png"
theme.layout_floating  = prefix .. "/layouts/floatingw.png"
theme.layout_magnifier = prefix .. "/layouts/magnifierw.png"
theme.layout_max = prefix .. "/layouts/maxw.png"
theme.layout_fullscreen = prefix .. "/layouts/fullscreenw.png"
theme.layout_tilebottom = prefix .. "/layouts/tilebottomw.png"
theme.layout_tileleft   = prefix .. "/layouts/tileleftw.png"
theme.layout_tile = prefix .. "/layouts/tilew.png"
theme.layout_tiletop = prefix .. "/layouts/tiletopw.png"
theme.layout_spiral  = prefix .. "/layouts/spiralw.png"
theme.layout_dwindle = prefix .. "/layouts/dwindlew.png"

theme.awesome_icon = "/usr/share/awesome/icons/awesome16.png"
theme.icon_theme = nil

return theme

--[[ random mood
local m_r = math.random(0, 255)
local m_g = math.random(0, 255)
local m_b = math.random(0, 255)
local mood = string.format("#%02x%02x%02x", m_r, m_g, m_b)
--]]

--[[ the mood experiment did not work out.
local mood = "#ffffff"

local r = tonumber(string.sub(mood, 2, 3), 16)
local g = tonumber(string.sub(mood, 4, 5), 16)
local b = tonumber(string.sub(mood, 6, 7), 16)

local mood_dark = string.format("#%02x%02x%02x", math.floor(r/2), math.floor(g/2), math.floor(b/2))
--]]
