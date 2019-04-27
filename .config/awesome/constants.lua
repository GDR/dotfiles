local constants = {}

constants.modkey = "Mod4"

constants.terminal = "alacritty"
constants.editor = os.getenv("EDITOR") or "vim"
constants.editor_cmd = constants.terminal .. " -e " .. constants.editor

return constants