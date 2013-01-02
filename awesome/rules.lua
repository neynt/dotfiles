-- {{{ Rules
awful.rules.rules = {
    -- All clients will match this rule.
    { rule = { },
      properties = { border_width = beautiful.border_width,
                     border_color = beautiful.border_normal,
                     focus = true,
                     keys = clientkeys,
                     buttons = clientbuttons,
                     size_hints_honor = false,
                     ontop = false,
                     fullscreen = false,
                     
                     --maximized_vertical = false,
                     --maximized_horizontal = false
                     } },
    { rule = { name="recordMyDesktop" },
      properties = { floating = true } },
    { rule = { name="Exe"}, -- Flash full screen
      properties = { floating = true } },
    { rule = { class="DeepinScrot.py" },
      properties = { fullscreen = true,
                     ontop = true } },
    { rule = { class="Tipswindow.py" },
      properties = { floating = true,
                     type = normal } },
    { rule = { class="Pidgin" },
      properties = { floating = false,
                     type = normal,
                     tag = tags[1][1] } },
    { rule = { class="Steam" },
      properties = { border_width = 0, floating = true } },
    -- Set Firefox to always map on tags number 2 of screen 1.
    -- { rule = { class = "Firefox" },
    --   properties = { tag = tags[1][2] } },
}
-- }}}

-- {{{ Signals
-- Signal function to execute when a new client appears.
client.connect_signal("manage", function (c, startup)
    --[[
    local titlebars_enabled = false
    if titlebars_enabled and (c.type == "normal" or c.type == "dialog") then
        local left_layout = wibox.layout.fixed.horizontal()
        left_layout:add(awful.titlebar.widget.iconwidget(c))

        -- Widgets that are aligned to the right
        local right_layout = wibox.layout.fixed.horizontal()
        right_layout:add(awful.titlebar.widget.floatingbutton(c))
        right_layout:add(awful.titlebar.widget.maximizedbutton(c))
        right_layout:add(awful.titlebar.widget.stickybutton(c))
        right_layout:add(awful.titlebar.widget.ontopbutton(c))
        right_layout:add(awful.titlebar.widget.closebutton(c))

        -- The title goes in the middle
        local title = awful.titlebar.widget.titlewidget(c)
        title:buttons(awful.util.table.join(
                awful.button({ }, 1, function()
                    client.focus = c
                    c:raise()
                    awful.mouse.client.move(c)
                end),
                awful.button({ }, 3, function()
                    client.focus = c
                    c:raise()
                    awful.mouse.client.resize(c)
                end)
                ))

        -- Now bring it all together
        local layout = wibox.layout.align.horizontal()
        layout:set_left(left_layout)
        layout:set_right(right_layout)
        layout:set_middle(title)

        awful.titlebar(c):set_widget(layout)
    -- ... but keep it hidden ]]
    if c.titlebar --[[and awful.layout.get(c.screen) ~= awful.layout.suit.floating]] then
        c.titlebar.visible = false
    end
    --]]

    -- Enable sloppy focus
    c:connect_signal("mouse::enter", function(c)
        if awful.layout.get(c.screen) ~= awful.layout.suit.magnifier
            and awful.client.focus.filter(c) then
            client.focus = c
        end
    end)

    if not startup then
        -- Set the windows at the slave,
        -- i.e. put it at the end of others instead of setting it master.
        -- awful.client.setslave(c)

        -- Put windows in a smart way, only if they does not set an initial position.
        if not c.size_hints.user_position and not c.size_hints.program_position then
            awful.placement.under_mouse(c)
            awful.placement.no_overlap(c)
            --awful.placement.no_offscreen(c)
        end
    end

    -- Arrange everything
    awful.layout.arrange(mouse.screen)
end)

for s = 1, screen.count() do screen[s]:connect_signal("arrange", function ()
    local clients = awful.client.visible(s)
    local layout = awful.layout.getname(awful.layout.get(s))

    for _, c in pairs(clients) do
        -- Floaters are always on top
        if awful.client.floating.get(c) or layout == "floating" then
            if not c.fullscreen and c.class ~= "Conky" then
                c.above = true
            end
        else
            c.above = false
        end
        
        -- Floaters obey size hints
        if awful.layout.get(c.screen) == awful.layout.suit.floating then
            c.size_hints_honor = true
        else
            c.size_hints_honor = false
        end
    end
    end)
end

client.connect_signal("focus", function(c) c.border_color = beautiful.border_focus end)
client.connect_signal("unfocus", function(c) c.border_color = beautiful.border_normal end)
-- }}}
