-- not done yet
local wibox = require("wibox")

--[[
local bluetoothWidget = wibox.widget{
	image =  "/home/hideuk/.config/awesome/images/wibar/bluetooth/bluetooth-off.svg",
	resize = true,
	widget = wibox.widget.imagebox
}
--]]

local bluetoothWidget = wibox.widget({
	{
		text = " ",
		widget = wibox.widget.textbox
	},
	{
		image = "/home/hideuk/.config/awesome/images/wibar/bluetooth/bluetooth-off.svg",
		resize = true,
		widget = wibox.widget.imagebox
	},
	layout = wibox.layout.fixed.horizontal,
})

_G.bluetoothWidgetContainer = wibox.container.background(bluetoothWidget)
_G.bluetoothWidgetContainer.bg = "#a6e3a1"
_G.bluetoothWidgetContainer.fg = "white"

return _G.bluetoothWidgetContainer
