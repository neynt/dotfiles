awful = require("awful")
awful.remote = require("awful.remote")
awful.rules = require("awful.rules")
require("awful.autofocus")
wibox = require("wibox")
beautiful = require("beautiful")
naughty = require("naughty")
vicious = require("vicious")

if awesome.startup_errors then
    naughty.notify({ 
        preset = naughty.config.presets.critical,
        title = "Oops, there were errors during startup!",
        text = awesome.startup_errors
    })
end

do
    local in_error = false
    awesome.connect_signal("debug::error", function (err)
        -- Make sure we don't go into an endless error loop
        if in_error then return end
        in_error = true

        naughty.notify({
            preset = naughty.config.presets.critical,
            title = "Oops, an error happened!",
            text = err
        })
        in_error = false
    end)
end

-- DELICIOUS GLOBALS
config_dir = awful.util.getdir("config")
wallpaper = "/stash/jim/wallpapers/active/frame.png"

-- DEFAULTS
terminal = "terminal"
editor = os.getenv("EDITOR") or "vim"
editor_cmd = "subl -n"
browser = os.getenv("BROWSER")
modkey = "Mod4"

-- THEME
beautiful.init(config_dir .. "/theme/theme.lua")

-- Notification theme
--naughty.config.theme.border_color = '#000000'
--naughty.config.theme.border_width = '1'

require("tags")
require("create") -- which requires widgets and menu
require("bindings")
require("rules")

-- Set wallpaper
if screen.count() > 1 then
    -- Pure white screen for all attached displays. Hahaha!
    awful.util.spawn("imlibsetroot -x 1 -s f --bg 255,255,255")
end
awful.util.spawn_with_shell("sleep 0.5 && imlibsetroot --composite -x 0 " .. wallpaper)

-- Set pretty things
awful.util.spawn("killall conky")
awful.util.spawn("xfsettingsd")
awful.util.spawn_with_shell("sleep 0.3 && compton")
awful.util.spawn_with_shell("sleep 1 && conky -c " .. config_dir .. "/conky/leftside")
awful.util.spawn_with_shell("sleep 2 && conky -c " .. config_dir .. "/conky/mpd")
