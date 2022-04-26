local awful = require("awful")
local autostart_cmds = require("constants").autostart

local function autostart()
  for _, autostart_cmd in pairs(autostart_cmds) do
      awful.spawn.single_instance(autostart_cmd)
  end
end

autostart()