vim.opt.relativenumber = true -- relative numbers

vim.opt.wrap = false -- No wrap line (good for long svg)

vim.filetype.add {
  filename = {
    [".func"] = "func",
  },
}
