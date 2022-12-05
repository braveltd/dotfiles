local awful = require("awful")
local gears = require("gears")
local hotkeys_popup = require("awful.hotkeys_popup")
local beautiful = require("beautiful")
-- local brightness = require("widgets/wibar/brightness")
local volume = require("widgets/wibar/volume")

-- TODO: add rofi theme selector
-- TODO: add keybindings to switch to these layout that i use most

-- step for adjust brightness in percentage
-- local brightnessStep = 3
local favoriteWallpaper = "$HOME/Pictures/Wallpaper/people/wallhaven-z8e8qy.jpg"

-- Keyboard changer, written by Brave

local keyboard_layout = require("keyboard_layout")

local kbdcfg = keyboard_layout.kbdcfg({type = "gui"})

kbdcfg.add_primary_layout("English", beautiful.en_layout, "us")
kbdcfg.add_primary_layout("Русский", beautiful.ru_layout, "ru")

kbdcfg.bind()

globalkeys = gears.table.join(
	-- Keyboard layot switcher, @bravelzt
  awful.key({"Shift"}, "Alt_L", function ()
    kbdcfg.switch_next()
  end, { description = "switch language", group = "keyboard" }),

  awful.key({"Control"}, "space", function ()
    kbdcfg.switch_next()
  end, { description = "switch language", group = "keyboard" }),
	-- Alt-Shift to change keyboard layout
	awful.key({"Mod1"}, "Shift_L", function ()
    kbdcfg.switch_next()
  end, { description = "switch language", group = "keyboard" }),

  -- Lock screen
	awful.key({ modkey, "Control" }, "l", function()
		awful.spawn.with_shell("xscreensaver-command -lock")
	end, { description = "xscreensaver lock screen", group = "launcher" }),

	-- Launch programs (launcher group)
	awful.key({ modkey }, "e", function()
		awful.spawn.with_shell("rofi -modi emoji -show emoji")
	end, { description = "open rofi emoji picker", group = "launcher" }),

	awful.key({ modkey }, "r", function()
		awful.spawn.with_shell("rofi -show drun")
	end, { description = "open rofi launcher", group = "launcher" }),

	-- awful.key({ modkey, "Control" }, "w", function()
	-- 	awful.spawn.with_shell("~/.config/rofi/powermenu.sh 2 2 yousai JetBrains\\ Mono\\ Nerd\\ Font 12")
	-- end, { description = "run rofi power menu", group = "launcher" }),

	awful.key({ modkey }, "Return", function()
		awful.spawn(terminal)
	end, { description = "open a terminal", group = "launcher" }),

	-- awful.key({ modkey }, "#90", function()
	-- 	awful.spawn.with_shell("feh --bg-fill --no-fehbg -r -z ~/Pictures/Wallpaper/")
	-- end, { description = "change wallpaper by feh", group = "launcher" }),

	-- awful.key({ modkey }, "#91", function()
	-- 	awful.spawn.with_shell("feh --bg-fill --no-fehbg -z " .. favoriteWallpaper)
	-- end, { description = "change wallpaper to my favorite one", group = "launcher" }),

	awful.key({ modkey, "Control" }, "b", function()
		awful.spawn("brave-browser")
	end, { description = "open brave", group = "launcher" }),

	awful.key({}, "Print", function()
		awful.spawn.with_shell("flameshot gui")
	end, { description = "open flameshot gui", group = "launcher" }),

	-- Multihead screen group
	awful.key({ modkey, "Control" }, "j", function()
		awful.screen.focus_relative(1)
	end, { description = "focus the next screen", group = "screen" }),

	awful.key({ modkey, "Control" }, "k", function()
		awful.screen.focus_relative(-1)
	end, { description = "focus the previous screen", group = "screen" }),

	-- awesome group
	awful.key({}, "XF86AudioRaiseVolume", function()
		awful.spawn.with_shell("pamixer -i 5")
		volume.updateIcon("raise")
	end, { description = "increase volume by 5%", group = "awesome" }),

	awful.key({}, "XF86AudioLowerVolume", function()
		awful.spawn.with_shell("pamixer -d 5")
		volume.updateIcon("lower")
	end, { description = "decrease volume by 5%", group = "awesome" }),

	awful.key({}, "XF86AudioMute", function()
		awful.spawn.with_shell("pamixer -t")
		volume.updateIcon("mute")
	end, { description = "toggle mute", group = "awesome" }),

	awful.key({ modkey }, "s", hotkeys_popup.show_help, { description = "show help", group = "awesome" }),

	awful.key({ modkey }, "b", function()
		myscreen = awful.screen.focused()
		myscreen.mywibox.visible = not myscreen.mywibox.visible
	end, { description = "toggle wibox", group = "awesome" }),

	awful.key({ modkey }, "Escape", function()
		awful.spawn.with_shell('betterlockscreen --lock')
	end, { description = "go back", group = "tag" }),

	awful.key({ modkey }, "Left", awful.tag.viewprev, { description = "view previous", group = "tag" }),
	awful.key({ modkey }, "Right", awful.tag.viewnext, { description = "view next", group = "tag" }),
	awful.key({ modkey }, "j", function()
		awful.client.focus.byidx(1)
	end, { description = "focus next by index", group = "client" }),
	awful.key({ modkey }, "k", function()
		awful.client.focus.byidx(-1)
	end, { description = "focus previous by index", group = "client" }),
	-- awful.key({ modkey }, "w", function()
	-- 	mymainmenu:show()
	-- end, { description = "show main menu", group = "awesome" }),

	-- Layout, client group
	awful.key({ modkey, "Shift" }, "j", function()
		awful.client.swap.byidx(1)
	end, { description = "swap with next client by index", group = "client" }),
	awful.key({ modkey, "Shift" }, "k", function()
		awful.client.swap.byidx(-1)
	end, { description = "swap with previous client by index", group = "client" }),
	awful.key({ modkey }, "u", awful.client.urgent.jumpto, { description = "jump to urgent client", group = "client" }),
	awful.key({ modkey }, "Tab", function()
		awful.client.focus.history.previous()
		if client.focus then
			client.focus:raise()
		end
	end, { description = "go back", group = "client" }),

	-- Standard program
	awful.key({ modkey, "Control" }, "r", awesome.restart, { description = "reload awesome", group = "awesome" }),
	awful.key({ modkey, "Shift" }, "q", awesome.quit, { description = "quit awesome", group = "awesome" }),

	awful.key({ modkey }, "l", function()
		awful.tag.incmwfact(0.05)
	end, { description = "increase master width factor", group = "layout" }),
	awful.key({ modkey }, "h", function()
		awful.tag.incmwfact(-0.05)
	end, { description = "decrease master width factor", group = "layout" }),
	awful.key({ modkey, "Shift" }, "h", function()
		awful.tag.incnmaster(1, nil, true)
	end, { description = "increase the number of master clients", group = "layout" }),
	awful.key({ modkey, "Shift" }, "l", function()
		awful.tag.incnmaster(-1, nil, true)
	end, { description = "decrease the number of master clients", group = "layout" }),
	awful.key({ modkey, "Control" }, "h", function()
		awful.tag.incncol(1, nil, true)
	end, { description = "increase the number of columns", group = "layout" }),
	awful.key({ modkey, "Control" }, "l", function()
		awful.tag.incncol(-1, nil, true)
	end, { description = "decrease the number of columns", group = "layout" }),
	awful.key({ modkey }, "space", function()
		awful.layout.inc(1)
	end, { description = "select next", group = "layout" }),
	awful.key({ modkey, "Shift" }, "space", function()
		awful.layout.inc(-1)
	end, { description = "select previous", group = "layout" }),
	awful.key({ modkey }, "Up", function()
		awful.client.incwfact(0.05)
	end, { description = "increase client width in tiling layout", group = "layout" }),
	awful.key({ modkey }, "Down", function()
		awful.client.incwfact(-0.05)
	end, { description = "decrease client width in tiling layout", group = "layout" }),

	awful.key({ modkey, "Control" }, "n", function()
		local c = awful.client.restore()
		-- Focus restored client
		if c then
			c:emit_signal("request::activate", "key.unminimize", { raise = true })
		end
	end, { description = "restore minimized", group = "client" })
)

clientkeys = gears.table.join(
	awful.key({ modkey }, "f", function(c)
		c.fullscreen = not c.fullscreen
		c:raise()
	end, { description = "toggle fullscreen", group = "client" }),
	awful.key({ modkey }, "q", function(c)
		c:kill()
	end, { description = "close", group = "client" }),
	awful.key(
		{ modkey, "Control" },
		"space",
		awful.client.floating.toggle,
		{ description = "toggle floating", group = "client" }
	),
	awful.key({ modkey, "Control" }, "Return", function(c)
		c:swap(awful.client.getmaster())
	end, { description = "move to master", group = "client" }),
	awful.key({ modkey }, "o", function(c)
		c:move_to_screen()
	end, { description = "move to screen", group = "client" }),
	awful.key({ modkey }, "t", function(c)
		c.ontop = not c.ontop
	end, { description = "toggle keep on top", group = "client" }),
	awful.key({ modkey }, "n", function(c)
		-- The client currently has the input focus, so it cannot be
		-- minimized, since minimized clients can't have the focus.
		c.minimized = true
	end, { description = "minimize", group = "client" }),
	awful.key({ modkey }, "m", function(c)
		c.maximized = not c.maximized
		c:raise()
	end, { description = "(un)maximize", group = "client" }),
	awful.key({ modkey, "Control" }, "m", function(c)
		c.maximized_vertical = not c.maximized_vertical
		c:raise()
	end, { description = "(un)maximize vertically", group = "client" }),
	awful.key({ modkey, "Shift" }, "m", function(c)
		c.maximized_horizontal = not c.maximized_horizontal
		c:raise()
	end, { description = "(un)maximize horizontally", group = "client" }),
	awful.key({ modkey }, "p", function(c)
		c.sticky = not c.sticky
	end, { description = "make window sticky", group = "client" })
)

-- Bind all key numbers to tags.
-- Be careful: we use keycodes to make it work on any keyboard layout.
-- This should map on the top row of your keyboard, usually 1 to 9.
for i = 1, 9 do
	globalkeys = gears.table.join(
		globalkeys,
		-- View tag only.
		awful.key({ modkey }, "#" .. i + 9, function()
			local screen = awful.screen.focused()
			local tag = screen.tags[i]
			if tag then
				tag:view_only()
			end
		end, { description = "view tag #" .. i, group = "tag" }),
		-- Toggle tag display.
		awful.key({ modkey, "Control" }, "#" .. i + 9, function()
			local screen = awful.screen.focused()
			local tag = screen.tags[i]
			if tag then
				awful.tag.viewtoggle(tag)
			end
		end, { description = "toggle tag #" .. i, group = "tag" }),
		-- Move client to tag.
		awful.key({ modkey, "Shift" }, "#" .. i + 9, function()
			if client.focus then
				local tag = client.focus.screen.tags[i]
				if tag then
					client.focus:move_to_tag(tag)
				end
			end
		end, { description = "move focused client to tag #" .. i, group = "tag" }),
		-- Toggle tag on focused client.
		awful.key({ modkey, "Control", "Shift" }, "#" .. i + 9, function()
			if client.focus then
				local tag = client.focus.screen.tags[i]
				if tag then
					client.focus:toggle_tag(tag)
				end
			end
		end, { description = "toggle focused client on tag #" .. i, group = "tag" })
	)
end

clientbuttons = gears.table.join(
	awful.button({}, 1, function(c)
		c:emit_signal("request::activate", "mouse_click", { raise = true })
	end),
	awful.button({ modkey }, 1, function(c)
		c:emit_signal("request::activate", "mouse_click", { raise = true })
		awful.mouse.client.move(c)
	end),
	awful.button({ modkey }, 3, function(c)
		c:emit_signal("request::activate", "mouse_click", { raise = true })
		awful.mouse.client.resize(c)
	end)
)

-- Set keys
root.keys(globalkeys)

-- Mouse
root.buttons(gears.table.join(
	awful.button({}, 3, function()
		mymainmenu:toggle()
	end),
	awful.button({}, 4, awful.tag.viewnext),
	awful.button({}, 5, awful.tag.viewprev)
))
