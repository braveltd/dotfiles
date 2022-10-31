return {
  ["goolord/alpha-nvim"] = {
    disable = false,
    override_options = {
      disable = false,
    }
  },
  ["ianding1/leetcode.vim"] = {},
  -- For Git blame and browse
  ["dinhhuy258/git.nvim"] = {
    config = function ()
      require "custom.plugins.git"
    end
  },
  -- Autopairs and Auto close tag
  ["windwp/nvim-autopairs"] = {},
  ["windwp/nvim-ts-autotag"] = {
    config = function ()
      require "custom.plugins.autotag"
    end,
  },
  -- LSP
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["nvim-treesitter/nvim-treesitter"] = {
    config = function()
      require "plugins.configs.treesitter"
      require "custom.plugins.treesitter"
    end,
  },
  -- Mason shitttt
  ["williamboman/mason.nvim"] = {
    config = function ()
      -- require "plugins.configs.mason"
      require "custom.plugins.mason"
    end,
  },
  ["williamboman/mason-lspconfig.nvim"] = {},
  -- Use neovim as language server to inject LSP Diagnostics
  ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require "custom.plugins.null-ls"
      end,
  },
  -- Prettier plugin for neovim
  ["MunifTanjim/prettier.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.prettier"
    end
  },
  -- Markdown preview
  ["iamcco/markdown-preview.nvim"] = {
    after = "nvim-lspconfig",
    run = "cd app && npm install",
    setup = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" }
  },
  -- LSP UIs
  ["glepnir/lspsaga.nvim"] = {
    config = function ()
      require "custom.plugins.lspsaga"
    end
  },
  -- disable default colorizer
  ["NvChad/nvim-colorizer.lua"] = false,
  -- install new colorizer
  ["norcalli/nvim-colorizer.lua"] = {
    config = function ()
      require "custom.plugins.colorizer"
    end
  },
  -- Change files with auto sudo rights
  ["lambdalisue/suda.vim"] = {}
}
