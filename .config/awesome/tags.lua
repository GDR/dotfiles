local awful = require("awful")

local tags = {}

tags[1] = {
  name = "Term",
  layout = awful.layout.suit.tile,
  gap_single_client = false,
}

tags[2] = {
  name = "Web",
  layout = awful.layout.float,
  gap_single_client = false,
}

tags[3] = {
  name = "Dev",
  layout = awful.layout.float,
  gap_single_client = false,
}

return tags
