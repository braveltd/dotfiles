local M = {}

local opts = {noremap = true, silent = true}

M.abc = {
  n = {
    ["<C-j>"] = { "<Cmd>Lspsaga diagnostic_jump_next<CR>", "lspsaga 1", opts },
    ["gd"] = { "<Cmd>Lspsaga lsp_finder<CR>", "lspsaga 2", opts },
    -- NOT WORKING
    -- ["<C-k>"] = { "<Cmd>Lspsaga signature_help<CR>", "lspsaga 3", opts },
    ["gp"] = { "<Cmd>Lspsaga peek_definition<CR>", "lspsaga 4", opts },
    ["gr"] = { "<Cmd>Lspsaga rename<CR>", "lspsaga 5", opts },
    -- Don't yank with x
    ["x"] = { '"_x', "delete characher" },
    -- Increment/Decrement numbers
    ["+"] = { '<C-a>', "increment" },
    ["-"] = { '<C-x>', "decrement" },
    -- Delete word, but backwards
    ["dw"] = { 'vb"_d', "backwards delete" },
    -- New buffer
    ["<C-t>"] = { "<cmd> enew <CR>", "new buffer" },
    -- Close buffer
    ["<C-x>"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
    "close buffer",
    },
    -- Move buffers
    ["sh"] = {'<C-w>h', "buffer left"},
    ["sk"] = {'<C-w>k', "buffer up"},
    ["sj"] = {'<C-w>j', "buffer down"},
    ["sl"] = {'<C-w>l', "buffer right"},
    -- Resize window
    ["<C-w><left>"] = {'<C-w><', "resize left"},
    ["<C-w><right>"] = {'<C-w>>', "resize right"},
    ["<C-w><up>"] = {'<C-w>+', "resize up"},
    ["<C-w><down>"] = {'<C-w>-', "resize down"},
  },
}
M.nvimtree = {
  n = {
    -- Move buffers
    ["sh"] = {'<C-w>h', "buffer left"},
    ["sk"] = {'<C-w>k', "buffer up"},
    ["sj"] = {'<C-w>j', "buffer down"},
    ["sl"] = {'<C-w>l', "buffer right"},
  }
}

return M
