-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")

-- Standard awesome library
require("awful.autofocus")
-- Enable hotkeys help widget for VIM and other apps
-- when client with a matching name is opened:
require("awful.hotkeys_popup.keys")

require("./errorhandling")
require("./constants")
require("./menu")
require("./wibar")
require("./mousebindings")
require("./keybindings")
require("./rules")
require("./signals")

require("./autostart")