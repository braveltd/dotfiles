local wibox = require("wibox")
local awful = require("awful")

_G.mytextclock = wibox.container.background(wibox.widget.textclock(" %a %b %d %H:%M "))
_G.mytextclock.bgimage = "~/.config/awesome/images/wibar/background/bg_blue.png"
_G.mytextclock.fg = "white"

local month_calendar = awful.widget.calendar_popup.month()
month_calendar:attach( _G.mytextclock, "tc", {on_hover = false})

return _G.mytextclock
