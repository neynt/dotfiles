require("menu")
--require("wibox")
require("widgets")

mysystray = wibox.widget.systray()
mywibox = {}
mylesserwibox = {}
mypromptbox = {}
mylayoutbox = {}
mytaglist = {}
mytaglist.buttons = awful.util.table.join(
    awful.button({ }, 1, awful.tag.viewonly),
    --awful.button({ modkey }, 1, awful.client.movetotag),
    awful.button({ }, 3, awful.tag.viewtoggle),
    --awful.button({ modkey }, 3, awful.client.toggletag),
    awful.button({ }, 4, function () awful.util.spawn(config_dir .. "/vol.sh up") end),
    awful.button({ }, 5, function () awful.util.spawn(config_dir .. "/vol.sh down") end)
)
--[[
mytasklist = {}
mytasklist.buttons = awful.util.table.join(
    awful.button({ }, 1, function (c)
        if not c:isvisible() then
            awful.tag.viewonly(c:tags()[1])
        end
        -- This will also un-minimize
        -- the client, if needed
        client.focus = c
        c:raise()
    end),
    awful.button({ }, 3, function (c)
        c.minimized = true
    end)
)
--]]

-- Create for each screen
for s = 1, screen.count() do
    -- Taglist
    mytaglist[s] = awful.widget.taglist(s, awful.widget.taglist.filter.all, mytaglist.buttons)
    -- Main wibox
    mywibox[s] = awful.wibox({ position = "top", screen = s })
    mywibox[s].height = 16

    if s == 1 then
        local left_layout = wibox.layout.fixed.horizontal()
        left_layout:add(left_separator)
        left_layout:add(mytaglist[s])
        left_layout:add(separator)

        local right_layout = wibox.layout.fixed.horizontal()
        right_layout:add(separator)
        right_layout:add(mysystray)
        right_layout:add(separator)
        right_layout:add(timewidget)
        right_layout:add(right_separator)

        local layout = wibox.layout.align.horizontal()
        layout:set_left(left_layout)
        layout:set_right(right_layout)

        mywibox[s]:set_widget(layout)
    else
        -- subordinate screens
        mywibox[s].widgets = {
            --mylayoutbox[s], separator,
			--mytaglist[s], separator,
            --mypromptbox[s],
            {
                --mytasklist[s],
                --layout = awful.widget.layout.horizontal.rightleft
            },
            --layout = awful.widget.layout.horizontal.leftright
        } 
    end
end
