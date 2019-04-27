-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")

-- Standard awesome library
require("awful.autofocus")

require("./notifications")
require("./layouts")
require("awful.hotkeys_popup.keys")
require("./rules")
require("./mouse_bindings")
require("./menu")
require("./global_keys")
require("./wibar")

local constants = require("./constants")