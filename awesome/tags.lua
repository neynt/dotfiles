layouts =
{
    awful.layout.suit.tile,
    --awful.layout.suit.floating,
    --awful.layout.suit.tile.left,
    --awful.layout.suit.tile.bottom,
    --awful.layout.suit.tile.top,
    awful.layout.suit.fair,
    --awful.layout.suit.fair.horizontal,
    --awful.layout.suit.spiral,
    --awful.layout.suit.spiral.dwindle,
    awful.layout.suit.max,
    --awful.layout.suit.max.fullscreen,
    --awful.layout.suit.magnifier
}

--local greeks = { 'α', 'β', 'γ', 'δ', 'ε', 'ζ', 'η', 'θ', 'ι', 'κ', 'λ', 'μ', 'ν', 'ξ', 'ο', 'π', 'ρ', 'σ', 'τ', 'υ', 'φ', 'χ', 'ψ', 'ω' }
--local greeks = { '一', '二', '三', '四', '五', '六', '七', '八', '九' }
--local greeks = { 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i' }

tags = {}
for s = 1, screen.count() do
	if s == 1 then
		--tags[s] = awful.tag({'一', '二', '三', '四', '五', '六', '七', '八', '九'}, s, layouts[1])
		--tags[s] = awful.tag({'一', '二', '三', '四'}, s, layouts[1])
		tags[s] = awful.tag({'!', '@', '#', '$'}, s, layouts[1])
		--tags[s] = awful.tag({'狼', '香', '辛', '料'}, s, layouts[1])
		--tags[s] = awful.tag({'1', '2', '3', '4', '5', '6', '7', '8', '9'}, s, layouts[1])
	else
		tags[s] = awful.tag({'0', '1'}, s, layouts[1])
	end
end
