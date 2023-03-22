local M = {}

M.mason = {
  ensure_installed = {
    "jsonlint",
    "vacuum",
    "pylint",
    "emmet-ls",
    "eslint_d",
    "prettierd",
    "pyright",
  },
}

M.treesitter = {
  ensure_installed = {
    "help",
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
    "func",
  },
}

return M
