local awful = require("awful")
local wibox = require("wibox")
-- local gears = require("gears")

-- TODO: how do i make a popup menu when click a widget?

--[[
	memory.sh script just has one line:
echo " $(free -h | head -n 2 | tail -n 1 | awk '{print $3"/"$2}') "
	but I have no idea why I can't put it into the first argument directly
--]]

local memoryUsage = awful.widget.watch("/home/brave/.config/awesome/widgets/wibar/scripts/memory.sh", 30)

_G.memoryContainer = wibox.container.background(memoryUsage)
_G.memoryContainer.bg = "#a6e3a1"
_G.memoryContainer.fg = "#1e1e2e"

return _G.memoryContainer
