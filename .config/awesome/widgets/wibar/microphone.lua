-- not done yet
local wibox = require("wibox")

local micWidget = wibox.widget{
	image =  "~/.config/awesome/images/wibar/microphone/microphone-off.svg",
	resize = true,
	widget = wibox.widget.imagebox
}

_G.micWidgetContainer = wibox.container.background(micWidget)
_G.micWidgetContainer.bg = "#a6e3a1"
_G.micWidgetContainer.fg = "#1e1e2e"

return _G.micWidgetContainer
