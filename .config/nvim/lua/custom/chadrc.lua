---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "yoru",
  theme_toggle = { "yoru", "everforest_light" },

  telescope = {
    style = "bordered", -- borderless / bordered
  },

  statusline = {
    theme = "default",
    separator_style = "block",
  },

  nvdash = {
    load_on_startup = true,
    header = {
      "▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄",
      "█   	                         █",
      "█                             █",
      "█  ▊     Brave Studio      ▌  █",
      "█                             █",
      "█      Best development,      █",
      "█        In the world!  	     █",
      "█   	                         █",
      "█▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█",
    },
  },
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
