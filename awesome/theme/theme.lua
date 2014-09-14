local prefix = "/home/neynt/.config/awesome/theme"

theme = {}

--theme.font          = "Sazanami Gothic,Tamsyn 8"
theme.font          = "Terminus,Sazanami Gothic 8"
--theme.font          = "xft:antialias=0,Tahoma 7"
--theme.font          = "Dosis SemiBold 8"
--theme.font          = "IPAPGothic 7"
--theme.font          = "cure 8"
--theme.font          = "Droid Sans 7"

theme.bg_normal     = "#000000"
theme.bg_focus      = "#393B2F"
theme.bg_urgent     = "#ff3300"
theme.bg_minimize   = "#888888"

theme.fg_normal     = "#828C5C"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ffff00"
theme.fg_minimize   = "#000000"

theme.border_width  = 0
theme.border_normal = "#393B2F"
theme.border_focus  = "#828C5C"
theme.border_marked = "#ff0000"

theme.useless_gap_width_orig = 8
theme.useless_gap_width = theme.useless_gap_width_orig

-- mix of border_focus and background
theme.light_color = "#FFB17D"

-- Others available:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]?
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

theme.tasklist_fg_focus = theme.fg_normal
theme.tasklist_bg_focus = theme.bg_normal
--theme.taglist_fg_focus = "#ffffff"
theme.tasklist_disable_icon = true
theme.bg_systray = theme.bg_normal

theme.tasklist_floating = "[float] "

-- dmenu theme
theme.dmenu_bg_normal = theme.bg_normal
theme.dmenu_fg_normal = theme.fg_normal
theme.dmenu_bg_focus = theme.bg_focus
theme.dmenu_fg_focus = theme.fg_focus

-- Display the taglist bars
theme.taglist_squares_sel   = prefix .. "/taglist/squarefw.png"
theme.taglist_squares_unsel = prefix .. "/taglist/squarew.png"

-- Variables set for theming the menu:
theme.menu_bg_normal = theme.bg_normal
theme.menu_bg_focus  = theme.bg_normal
theme.menu_fg_normal = theme.fg_normal
theme.menu_fg_focus  = theme.taglist_fg_focus
theme.menu_border_width = "0"
theme.menu_submenu_icon = prefix .. "/submenu.png"
theme.menu_height = 16
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
--theme.wallpaper = "/stash/jim/wallpapers/active/homu_suffer.png"

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
