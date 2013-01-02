require("beautiful")

-- {{{ Mouse bindings
root.buttons(
    awful.util.table.join(
        awful.button({ }, 3, function () mymainmenu:toggle() end),
        awful.button({ }, 1, function () mymainmenu:hide() end)
        --awful.button({ }, 4, awful.tag.viewnext),
        --awful.button({ }, 5, awful.tag.viewprev)
    )
)
-- }}}

-- {{{ Key bindings
globalkeys = awful.util.table.join(
    -- Window movement
    awful.key({ modkey,           }, "Left",   awful.tag.viewprev       ),
    awful.key({ modkey,           }, "Right",  awful.tag.viewnext       ),
    awful.key({ modkey,           }, "Escape", awful.tag.history.restore),
    awful.key({ modkey,           }, "j",
        function ()
            awful.client.focus.byidx( 1)
            if client.focus then client.focus:raise() end
        end),
    awful.key({ modkey,           }, "k",
        function ()
            awful.client.focus.byidx(-1)
            if client.focus then client.focus:raise() end
        end),

    -- Layout manipulation
    awful.key({ modkey, "Shift"   }, "j", function () awful.client.swap.byidx(  1)    end),
    awful.key({ modkey, "Shift"   }, "k", function () awful.client.swap.byidx( -1)    end),
    awful.key({ modkey, "Control" }, "j", function () awful.screen.focus_relative( 1) end),
    awful.key({ modkey, "Control" }, "k", function () awful.screen.focus_relative(-1) end),
    awful.key({ modkey,           }, "u", awful.client.urgent.jumpto),
    awful.key({ modkey,           }, "Tab",
        function ()
            awful.client.focus.history.previous()
            if client.focus then
                client.focus:raise()
            end
        end),

    -- Awesome
    awful.key({ modkey,           }, "grave", function ()
        awful.util.spawn_with_shell("killall compton")
        awesome.restart()
    end),
    awful.key({ modkey, "Shift", "Control" }, "Escape", awesome.quit),
    awful.key({ modkey,           }, "l",     function () awful.tag.incmwfact(0.1) end),
    awful.key({ modkey,           }, "h",     function () awful.tag.incmwfact(-0.1) end),
    awful.key({ modkey,           }, "m",     function () awful.tag.setmwfact(0.5) end),
    awful.key({ modkey, "Shift"   }, "h",     function () awful.tag.incnmaster( 1)      end),
    awful.key({ modkey, "Shift"   }, "l",     function () awful.tag.incnmaster(-1)      end),
    awful.key({ modkey, "Control" }, "h",     function () awful.tag.incncol( 1)         end),
    awful.key({ modkey, "Control" }, "l",     function () awful.tag.incncol(-1)         end),
    awful.key({ modkey,           }, "F1",    function () awful.layout.set(awful.layout.suit.tile) end),
    awful.key({ modkey,           }, "F2",    function () awful.layout.set(awful.layout.suit.max) end),
    awful.key({ modkey,           }, "F3",    function () awful.layout.set(awful.layout.suit.fair.horizontal) end),
    awful.key({ modkey,           }, "F4",    function () awful.layout.set(awful.layout.suit.spiral.dwindle) end),
    awful.key({ modkey,           }, "F5",    function () awful.layout.set(awful.layout.suit.magnifier) end),
    awful.key({ modkey,           }, "w",    function () awful.layout.set(awful.layout.suit.floating) end),
    awful.key({ modkey, "Control" }, "n", awful.client.restore),
    awful.key({ modkey }, "b", function ()
        -- Toggles between "minimal" and "functional" mode.
        mywibox[mouse.screen].visible = not mywibox[mouse.screen].visible
		--beautiful.gap_width = beautiful.orig_gap-beautiful.gap_width+beautiful.small_gap
        --[[
        for _,c in pairs(awful.client.tiled(s)) do
            c.border_width = beautiful.border_width - c.border_width
            c.titlebar.visible = not c.titlebar.visible
        end
        --]]
		--beautiful.border_width = "0"
		awful.layout.arrange(mouse.screen)
    end),
    awful.key({ modkey }, "0", function ()
        -- blackens everything.
        awful.util.spawn_with_shell("killall conky")
        awful.util.spawn_with_shell("xsetroot -solid black")
        awful.util.spawn_with_shell("killall compton")
    end),
    -- Prompt
    awful.key({ modkey,           }, "r",
        function () awful.util.spawn("dmenu_run -fn 'Termsynu-10' " ..
                                      --"-b " ..
                                      --"-l 9 " ..
                                      "-i " ..
                                      "-p 'run:' " ..
                                      "-nb '" .. beautiful.bg_normal .. "' " ..
                                      "-nf '" .. beautiful.fg_normal .. "' " ..
                                      "-sb '" .. beautiful.bg_focus .. "' " ..
                                      "-sf '" .. beautiful.fg_focus .. "'")
        end),
    
    -- Applications
    awful.key({ modkey, "Shift"   }, "Return", function () awful.util.spawn(terminal) end ),
    awful.key({ modkey, "Shift"   }, "w",      function () awful.util.spawn(browser) end),
    awful.key({ modkey, "Shift", "Control", }, "w", function () awful.util.spawn("chromium --incognito") end),
    awful.key({ modkey, "Shift"   }, "g",      function () awful.util.spawn("gimp") end),
    awful.key({ modkey, "Shift"   }, "f",      function () awful.util.spawn("thunar") end),
    awful.key({ modkey, "Shift"   }, "a",      function () awful.util.spawn("arandr") end),
    awful.key({ modkey, "Shift"   }, "x",      function () awful.util.spawn("xkill") end),
    awful.key({ modkey, "Shift"   }, "v",      function () awful.util.spawn("vlc") end),
    awful.key({ modkey, "Shift"   }, "s",      function () awful.util.spawn("deepin-scrot") end),
    awful.key({ modkey,           }, "s",      function () awful.util.spawn(config_dir .. "/scrotshot.sh ") end),
    awful.key({ modkey,           }, "a",      function () awful.util.spawn(config_dir .. "/scrotshot.sh area") end),
    awful.key({ modkey, "Shift"   }, "i",      function () awful.util.spawn(terminal .. " -e wicd-curses") end),
    awful.key({ modkey, "Shift"   }, "p",      function () awful.util.spawn(terminal .. " -e python") end),
    awful.key({ modkey, "Shift"   }, "n",      function () awful.util.spawn(terminal .. " -e ncmpcpp") end),
    awful.key({ modkey, "Shift"   }, "m",      function () awful.util.spawn(terminal .. " -e htop") end),
    awful.key({ modkey, "Shift"   }, "e",      function () awful.util.spawn(editor_cmd) end),
    
    -- Utils
    awful.key({ }, "XF86PowerOff",             function () awful.util.spawn("xset dpms force off"); awful.util.spawn("systemctl suspend") end),
    awful.key({ }, "XF86Suspend",              function () awful.util.spawn("systemctl hibernate") end),
    awful.key({ }, "XF86MonBrightnessUp",      function () awful.util.spawn(config_dir .. "/brig.sh +") end),
    awful.key({ }, "XF86MonBrightnessDown",    function () awful.util.spawn(config_dir .. "/brig.sh -") end),
    awful.key({ }, "XF86AudioMute",            function () awful.util.spawn(config_dir .. "/vol.sh mute") end),
    awful.key({ }, "XF86AudioRaiseVolume",     function () awful.util.spawn(config_dir .. "/vol.sh up") end),
    awful.key({ }, "XF86AudioLowerVolume",     function () awful.util.spawn(config_dir .. "/vol.sh down") end),
    awful.key({ }, "Help",                     function () awful.util.spawn(config_dir .. "/lock.sh") end),
    awful.key({ }, "Print",                    function () awful.util.spawn(config_dir .. "/scrotshot.sh") end),
    awful.key({ }, "XF86HomePage",             function () awful.util.spawn("xcalib -clear") end)
)

clientkeys = awful.util.table.join(
    awful.key({ modkey,           }, "f",      function (c) c.fullscreen = not c.fullscreen  end),
    awful.key({ modkey,           }, "c",      function (c) c:kill()                         end),
    awful.key({ modkey,           }, "space",  awful.client.floating.toggle                     ),
    --awful.key({ modkey,           }, "x",      function (c) c.border_width = 1-c.border_width end),
    awful.key({ modkey,           }, "Return", function (c) c:swap(awful.client.getmaster()) end),
    awful.key({ modkey,           }, "o",      awful.client.movetoscreen                        ),
    awful.key({ modkey,           }, "n",
        function (c)
            c.border_width = beautiful.border_width - c.border_width
            c.titlebar.visible = not c.titlebar.visible
            awful.layout.arrange(mouse.screen)
        end
    )
)

-- Compute the maximum number of digit we need, limited to 9
keynumber = 0
for s = 1, screen.count() do
   keynumber = math.min(9, math.max(#tags[s], keynumber));
end

local tagkeys = { 1, 2, 3, 4, 5, 6, 7, 8, 9 }
-- Bind all key numbers to tags.
-- Be careful: we use keycodes to make it works on any keyboard layout.
-- This should map on the top row of your keyboard, usually 1 to 9.
for i,k in pairs(tagkeys) do
    globalkeys = awful.util.table.join(globalkeys,
        awful.key({ modkey }, "#" .. k + 9,
                  function ()
                        local screen = mouse.screen
                        if tags[screen][i] then
                            awful.tag.viewonly(tags[screen][i])
                        end
                  end),
        awful.key({ modkey, "Control" }, "#" .. k + 9,
                  function ()
                      local screen = mouse.screen
                      if tags[screen][i] then
                          awful.tag.viewtoggle(tags[screen][i])
                      end
                  end),
        awful.key({ modkey, "Shift" }, "#" .. k + 9,
                  function ()
                      if client.focus and tags[client.focus.screen][i] then
                          awful.client.movetotag(tags[client.focus.screen][i])
                      end
                  end),
        awful.key({ modkey, "Control", "Shift" }, "#" .. k + 9,
                  function ()
                      if client.focus and tags[client.focus.screen][i] then
                          awful.client.toggletag(tags[client.focus.screen][i])
                      end
                  end))
end

clientbuttons = awful.util.table.join(
    awful.button({ }, 1, function (c) client.focus = c; c:raise() end),
    awful.button({ modkey }, 1, awful.mouse.client.move),
    awful.button({ modkey }, 3, awful.mouse.client.resize))

-- Set keys
root.keys(globalkeys)
-- }}}
