local M = {}

M.abc = {
  n = {
    ["+"] = { "<C-a>", "increment" },
    ["-"] = { "<C-x>", "decrement" },
    ["<C-t>"] = { "<cmd> enew <CR>", "new buffer" },
    ["<C-x>"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "close buffer",
    },
    ["x"] = { '"_x', "Don't yank with x" },
    -- window resizement
    ["<C-w><left>"] = { "<C-w><", "resize left" },
    ["<C-w><right>"] = { "<C-w>>", "resize right" },
    ["<C-w><up>"] = { "<C-w>+", "resize up" },
    ["<C-w><down>"] = { "<C-w>-", "resize down" },

    -- shitty saga
    ["<C-j>"] = { "<Cmd>Lspsaga diagnostic_jump_next<CR>", "lspsaga 1" },
    ["gd"] = { "<Cmd>Lspsaga lsp_finder<CR>", "lspsaga 2" },
    ["gp"] = { "<Cmd>Lspsaga peek_definition<CR>", "lspsaga 4" },
    ["gr"] = { "<Cmd>Lspsaga rename<CR>", "lspsaga 5" },
  },
}

return M
