-- {{{ Rules
awful.rules.rules = {
    -- All clients will match this rule.
    { rule = { },
      properties = { border_width = beautiful.border_width,
                     border_color = beautiful.border_normal,
                     focus = awful.client.focus.filter,
                     size_hints_honor = false,
                     --ontop = false,
                     --fullscreen = false,

                     keys = clientkeys,
                     buttons = clientbuttons,
                     
                     maximized_vertical = false,
                     maximized_horizontal = false
                     } },
    { rule = { name="recordMyDesktop" },
      properties = { floating = true } },
    { rule = { name="Gvim" },
      properties = { size_hints_honor = true } },
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
    { rule = { class="Tegaki-recognize" },
      properties = { border_width = 8,
                     floating = true,
                     focus = function (c) return nil end,
                     buttons = nil } },
    -- Set Firefox to always map on tags number 2 of screen 1.
    -- { rule = { class = "Firefox" },
    --   properties = { tag = tags[1][2] } },
}
-- }}}

-- {{{ Signals
-- Signal function to execute when a new client appears.
client.connect_signal("manage", function (c, startup)
    if not startup then
        -- Set the windows at the slave,
        -- i.e. put it at the end of others instead of setting it master.
        awful.client.setslave(c)

        -- Put windows in a smart way, only if they does not set an initial position.
        if not c.size_hints.user_position and not c.size_hints.program_position then
            --awful.placement.under_mouse(c)
            awful.placement.no_overlap(c)
            awful.placement.no_offscreen(c)
        end
    end

    c:connect_signal("mouse::enter", function(c)
        if awful.layout.get(c.screen) ~= awful.layout.suit.magnifier
            and awful.client.focus.filter(c) then
            client.focus = c
        end
    end)

    -- Arrange everything
    awful.layout.arrange(mouse.screen)
end)

-- Arrange signal handler
for s = 1, screen.count() do screen[s]:connect_signal("arrange", function ()
    local clients = awful.client.visible(s)
    local layout = awful.layout.getname(awful.layout.get(s))

    local num_tiled = 0
    for _, c in pairs(clients) do
        if not awful.client.floating.get(c) then
            num_tiled = num_tiled + 1
        end
    end
    if layout == "floating" then
        num_tiled = 2
    end

    for _, c in pairs(clients) do
        if num_tiled <= 1 or layout == "max" then
            c.border_width = 0
            beautiful.useless_gap_width = 0
        else
            c.border_width = beautiful.border_width
            beautiful.useless_gap_width = beautiful.useless_gap_width_orig
        end
        if awful.client.floating.get(c) or layout == "floating" then
            -- Floaters are always on top
            c.size_hints_honor = true
            -- and bordered
            if not c.fullscreen then
                -- and above
                c.above = true
            end
        else
            c.above = false
            c.size_hints_honor = false
        end
    end
  end)
end

client.connect_signal("focus", function(c) c.border_color = beautiful.border_focus end)
client.connect_signal("unfocus", function(c) c.border_color = beautiful.border_normal end)
-- }}}
