-- not done yet
local wibox = require("wibox")

local networkWidget = wibox.widget({
	{
		image = "/home/hideuk/.config/awesome/images/wibar/network/signal-cellular-2.svg",
		resize = true,
		widget = wibox.widget.imagebox,
	},
	{
		text = " ",
		widget = wibox.widget.textbox,
	},
	layout = wibox.layout.fixed.horizontal
})

--[[
local networkWidget = wibox.widget{
	image = "/home/hideuk/.config/awesome/images/wibar/network/signal-cellular-2.svg",
	widget = wibox.widget.imagebox,
}
--]]

_G.networkWidgetContainer = wibox.container.background(networkWidget)
_G.networkWidgetContainer.bg = "#a6e3a1"
_G.networkWidgetContainer.fg = "#1e1e2e"

return _G.networkWidgetContainer
