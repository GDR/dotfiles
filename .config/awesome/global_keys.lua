local gears = require("gears")
local awful = require("awful")
local hotkeys_popup = require("awful.hotkeys_popup")
local menubar = require("menubar")
local constants = require("./constants")

globalkeys = gears.table.join(
  awful.key({ constants.modkey, }, "s", hotkeys_popup.show_help,
            { description = "show help", group = "awesome" }),
  awful.key({ constants.modkey, }, "Left", awful.tag.viewprev,
            { description = "view previous", group = "tag" }),
  awful.key({ constants.modkey, }, "Right", awful.tag.viewnext,
            { description = "view next", group = "tag" }),
  awful.key({ constants.modkey, }, "Escape", awful.tag.history.restore,
            { description = "go back", group = "tag" }),

  awful.key({ constants.modkey, }, "j",
            function()
              awful.client.focus.byidx(1)
            end,
            { description = "focus next by index", group = "client" }
  ),
  awful.key({ constants.modkey, }, "k",
            function()
              awful.client.focus.byidx(-1)
            end,
            { description = "focus previous by index", group = "client" }
  ),
  awful.key({ constants.modkey, }, "w", function() mymainmenu:show() end,
            { description = "show main menu", group = "awesome" }),

-- Layout manipulation
  awful.key({ constants.modkey, "Shift" }, "j", function() awful.client.swap.byidx(1) end,
            { description = "swap with next client by index", group = "client" }),
  awful.key({ constants.modkey, "Shift" }, "k", function() awful.client.swap.byidx(-1) end,
            { description = "swap with previous client by index", group = "client" }),
  awful.key({ constants.modkey, "Control" }, "j", function() awful.screen.focus_relative(1) end,
            { description = "focus the next screen", group = "screen" }),
  awful.key({ constants.modkey, "Control" }, "k", function() awful.screen.focus_relative(-1) end,
            { description = "focus the previous screen", group = "screen" }),
  awful.key({ constants.modkey, }, "u", awful.client.urgent.jumpto,
            { description = "jump to urgent client", group = "client" }),
  awful.key({ constants.modkey, }, "Tab",
            function()
              awful.client.focus.history.previous()
              if client.focus then
                client.focus:raise()
              end
            end,
            { description = "go back", group = "client" }),

-- Standard program
  awful.key({ constants.modkey, }, "Return", function() awful.spawn(constants.terminal) end,
            { description = "open a terminal", group = "launcher" }),
  awful.key({ constants.modkey, "Control" }, "r", awesome.restart,
            { description = "reload awesome", group = "awesome" }),
  awful.key({ constants.modkey, "Shift" }, "q", awesome.quit,
            { description = "quit awesome", group = "awesome" }),

  awful.key({ constants.modkey, }, "l", function() awful.tag.incmwfact(0.05) end,
            { description = "increase master width factor", group = "layout" }),
  awful.key({ constants.modkey, }, "h", function() awful.tag.incmwfact(-0.05) end,
            { description = "decrease master width factor", group = "layout" }),
  awful.key({ constants.modkey, "Shift" }, "h", function() awful.tag.incnmaster(1, nil, true) end,
            { description = "increase the number of master clients", group = "layout" }),
  awful.key({ constants.modkey, "Shift" }, "l", function() awful.tag.incnmaster(-1, nil, true) end,
            { description = "decrease the number of master clients", group = "layout" }),
  awful.key({ constants.modkey, "Control" }, "h", function() awful.tag.incncol(1, nil, true) end,
            { description = "increase the number of columns", group = "layout" }),
  awful.key({ constants.modkey, "Control" }, "l", function() awful.tag.incncol(-1, nil, true) end,
            { description = "decrease the number of columns", group = "layout" }),
  awful.key({ constants.modkey, }, "space", function() awful.layout.inc(1) end,
            { description = "select next", group = "layout" }),

  awful.key({ constants.modkey, "Shift" }, "space",
            function()
              awful.layout.inc(-1)
            end, { description = "select previous", group = "layout" }
  ),

  awful.key({}, "XF86MonBrightnessUp",
            function()
              awful.spawn("xbacklight -inc 15")
            end, { description = "Increase brightness", group = "Fn keys" }
  ),
  awful.key({}, "XF86MonBrightnessDown",
            function()
              awful.spawn("xbacklight -dec 15")
            end, { description = "Decrease brightness", group = "Fn keys" }
  ),
  awful.key({}, "XF86AudioRaiseVolume",
            function()
              awful.spawn("amixer set 'Master' 5%+")
            end, { description = "Increase volume", group = "Fn keys" }
  ),
  awful.key({}, "XF86AudioLowerVolume",
            function()
              awful.spawn("amixer set 'Master' 5%-")
            end, { description = "Decrease volume", group = "Fn keys" }
  ),
  awful.key({}, "XF86AudioMute",
            function()
              awful.spawn("amixer set 'Master' toggle")
            end, { description = "Toggle audio", group = "Fn keys" }
  ),
  awful.key({}, "XF86AudioMute",
            function()
              awful.spawn("amixer set 'Master' toggle")
            end, { description = "Toggle audio", group = "Fn keys" }
  ),
  awful.key({}, "XF86AudioMicMute",
            function()
              awful.spawn("amixer set 'Capture' toggle")
            end, { description = "Toggle audio", group = "Fn keys" }
  ),
  awful.key({}, "XF86Tools",
            function()
              awful.spawn("amixer 'Capture' toggle")
            end, { description = "Lock screen", group = "Fn keys" }
  ),

  awful.key({ constants.modkey, "Control" }, "n",
            function()
              local c = awful.client.restore()
              -- Focus restored client
              if c then
                c:emit_signal(
                  "request::activate", "key.unminimize", { raise = true }
                )
              end
            end, { description = "restore minimized", group = "client" }
  ),

-- Prompt
  awful.key({ constants.modkey }, "r",
            function()
              awful.screen.focused().mypromptbox:run()
            end, { description = "run prompt", group = "launcher" }
  ),

  awful.key({ constants.modkey }, "x",
            function()
              awful.prompt.run {
                prompt = "Run Lua code: ",
                textbox = awful.screen.focused().mypromptbox.widget,
                exe_callback = awful.util.eval,
                history_path = awful.util.get_cache_dir() .. "/history_eval"
              }
            end,
            { description = "lua execute prompt", group = "awesome" }),
-- Menubar
  awful.key({ constants.modkey }, "p", function() awful.spawn("rofi -show drun") end,
            { description = "show the menubar", group = "launcher" })
)

-- Bind all key numbers to tags.
-- Be careful: we use keycodes to make it work on any keyboard layout.
-- This should map on the top row of your keyboard, usually 1 to 9.
for i = 1, 9 do
  globalkeys = gears.table.join(globalkeys,
  -- View tag only.
                                awful.key({ constants.modkey }, "#" .. i + 9,
                                          function()
                                            local screen = awful.screen.focused()
                                            local tag = screen.tags[i]
                                            if tag then
                                              tag:view_only()
                                            end
                                          end,
                                          { description = "view tag #" .. i, group = "tag" }),
  -- Toggle tag display.
                                awful.key({ constants.modkey, "Control" }, "#" .. i + 9,
                                          function()
                                            local screen = awful.screen.focused()
                                            local tag = screen.tags[i]
                                            if tag then
                                              awful.tag.viewtoggle(tag)
                                            end
                                          end,
                                          { description = "toggle tag #" .. i, group = "tag" }),
  -- Move client to tag.
                                awful.key({ constants.modkey, "Shift" }, "#" .. i + 9,
                                          function()
                                            if client.focus then
                                              local tag = client.focus.screen.tags[i]
                                              if tag then
                                                client.focus:move_to_tag(tag)
                                              end
                                            end
                                          end,
                                          { description = "move focused client to tag #" .. i, group = "tag" }),
  -- Toggle tag on focused client.
                                awful.key({ constants.modkey, "Control", "Shift" }, "#" .. i + 9,
                                          function()
                                            if client.focus then
                                              local tag = client.focus.screen.tags[i]
                                              if tag then
                                                client.focus:toggle_tag(tag)
                                              end
                                            end
                                          end,
                                          { description = "toggle focused client on tag #" .. i, group = "tag" })
  )
end

-- Set keys
root.keys(globalkeys)
