local awful = require("awful")
local constants = require("./constants")

function autostart()
  for _, autostart_cmd in pairs(constants.autostart) do
      awful.spawn.single_instance(autostart_cmd)
  end
end

autostart()
