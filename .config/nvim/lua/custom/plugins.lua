---@type NvPluginSpec[]
local plugins = {
  {
    "neovim/nvim-lspconfig",

    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "python",
        "html",
        "css",
        "scss",
        "javascript",
        "typescript",
        "tsx",
        "lua",
        "json",
        "css",
        "func"
      },
    },
  },
}

return plugins
