local wibox = require("wibox")
local gears = require("gears")
local awful = require("awful")

local powerButton = wibox.widget{
	image = "/home/hideuk/.config/awesome/images/wibar/power/power-button.svg",
	resize = true,
	widget = wibox.widget.imagebox
}

powerButton:buttons(gears.table.join(
	awful.button({}, 1, function()
		awful.spawn.with_shell("/home/hideuk/.config/rofi/powermenu.sh 2 4 everforest JetBrains\\ Mono\\ Nerd\\ Font 12")
	end)
))

-- add some nice little background
_G.powerButtonContainer = wibox.container.background(powerButton)
_G.powerButtonContainer.bg = "#c5729a"

return _G.powerButtonContainer
