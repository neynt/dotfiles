-- Standard awesome library
gears = require("gears")
awful = require("awful")
require("awful.autofocus")
awful.rules = require("awful.rules")
wibox = require("wibox")
beautiful = require("beautiful")
naughty = require("naughty")
menubar = require("menubar")

require("eminent")

-- Error checking
if awesome.startup_errors then
    naughty.notify({ preset = naughty.config.presets.critical,
                     title = "Oops, there were errors during startup!",
                     text = awesome.startup_errors })
end

-- Handle runtime errors after startup
do
    local in_error = false
    awesome.connect_signal("debug::error", function (err)
        -- Make sure we don't go into an endless error loop
        if in_error then return end
        in_error = true

        naughty.notify({ preset = naughty.config.presets.critical,
                         title = "Oops, an error happened!",
                         text = err })
        in_error = false
    end)
end

-- DELICIOUS GLOBALS
config_dir = awful.util.getdir("config")
wallpaper = "/vault/art/tarvasjogi.jpg"
wallpaper_other = "/home/neynt/dotfiles/wallpaper-other.png"

-- THEME
beautiful.init(config_dir .. "/theme/theme.lua")

-- DEFAULTS
terminal = "xfce4-terminal"
editor = os.getenv("EDITOR") or "vim"
editor_cmd = "scite"
browser = os.getenv("BROWSER")
modkey = "Mod4"

-- Notification theme
--naughty.config.theme.border_color = '#000000'
--naughty.config.theme.border_width = '1'

--gears.wallpaper.set(gears.color.create_solid_pattern('#171A1E'))
-- Set wallpaper
for s = 1, screen.count() do
    gears.wallpaper.maximized(wallpaper_other, s)
end
gears.wallpaper.maximized(wallpaper, 1)

-- Include everything!
dofile(config_dir .. "/tags.lua")
dofile(config_dir .. "/menu.lua")
dofile(config_dir .. "/widgets.lua")
dofile(config_dir .. "/create.lua")
dofile(config_dir .. "/bindings.lua")
dofile(config_dir .. "/rules.lua")

-- Set wallpaper
if screen.count() > 1 then
    -- Pure white screen for all attached displays. Hahaha!
    --awful.util.spawn_with_shell("sleep 0.3 && imlibsetroot --bg 255,255,255")
end
--awful.util.spawn_with_shell("sleep 0.2 && imlibsetroot -x 0 --bg 16,16,16")
--awful.util.spawn_with_shell("sleep 0.8 && imlibsetroot --composite -x 0 " .. wallpaper)

-- Set pretty things
awful.util.spawn("killall compton")
--awful.util.spawn("killall conky")
awful.util.spawn_with_shell("ibus-daemon --replace --xim -d")
awful.util.spawn_with_shell("xfsettingsd")
awful.util.spawn_with_shell("compton")
--awful.util.spawn_with_shell("sleep 1 && conky -c " .. config_dir .. "/conky/leftside")
--awful.util.spawn_with_shell("sleep 3 && conky -c " .. config_dir .. "/conky/mpd")
