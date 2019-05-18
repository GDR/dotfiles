-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")
local beautiful = require("beautiful")
local gears = require("gears")
-- Standard awesome library
require("awful.autofocus")

beautiful.init(gears.filesystem.get_configuration_dir() .. "/theme/gtk/theme.lua")

require("./notifications")
require("./layouts")
require("awful.hotkeys_popup.keys")
require("./rules")
require("./mouse_bindings")
require("./menu")
require("./global_keys")
require("./wibar")

local constants = require("./constants")