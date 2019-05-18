local constants = {}

constants.modkey = "Mod4"

constants.terminal = "alacritty"
constants.editor = os.getenv("EDITOR") or "vim"
constants.editor_cmd = constants.terminal .. " -e " .. constants.editor

constants.autostart = {
  "nm-applet",
  "setxkbmap us,ru -option \"grp:alt_space_toggle\"",
  "compton --config ~/.config/compton.conf",
}

return constants
