---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "everforest_light" },

  telescope = {
    style = "bordered", -- borderless / bordered
  },

  statusline = {
    theme = "minimal",
    separator_style = "round"
  },

  nvdash = {
    load_on_startup = true,
  }
}

M.plugins = "custom.plugins"

return M
