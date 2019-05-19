
local gears = require("gears")
local constants = {}

constants.modkey = "Mod4"

constants.terminal = "alacritty"
constants.editor = os.getenv("EDITOR") or "vim"
constants.editor_cmd = constants.terminal .. " -e " .. constants.editor

constants.autostart = {
  "nm-applet",
  "setxkbmap us,ru -option \"grp:alt_space_toggle\"",
  "compton --config " .. gears.filesystem.get_xdg_config_home() .. "compton.conf",
}

return constants
