local menubar = require("menubar")
local constants = require("./constants")
local beautiful = require("beautiful")
local awful = require("awful")

myawesomemenu = {
    { "hotkeys", function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
    { "manual", constants.terminal .. " -e man awesome" },
    { "edit config", constants.editor_cmd .. " " .. awesome.conffile },
    { "restart", awesome.restart },
    { "quit", function() awesome.quit() end },
 }
 
 mymainmenu = awful.menu({ items = { { "awesome", myawesomemenu, beautiful.awesome_icon },
                                     { "open terminal", constants.terminal }
                                   }
                         })
 
 mylauncher = awful.widget.launcher({ image = beautiful.awesome_icon,
                                      menu = mymainmenu })
 
 -- Menubar configuration
 menubar.utils.terminal = terminal -- Set the terminal for applications that require it