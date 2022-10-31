-- relative numbers
vim.opt.relativenumber = true
-- auto sudo
vim.g.suda_smart_edit = 1

-- -- closetag plugin stuff
-- vim.g.closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.js,*.tsx'
-- vim.g.closetag_xhtml_filenames = '*.xhtml,*.jsx'
-- vim.g.closetag_filetypes = 'html,xhtml,phtml'
-- vim.g.closetag_xhtml_filetypes = 'xhtml,jsx'
-- vim.g.closetag_emptyTags_caseSensitive = 1
-- vim.g.closetag_shortcut = '>'
-- vim.g.closetag_close_shortcut = '<leader>>'-- opt.noswapfile = true


-- load it after nvim-lspconfig , since we'll use some lspconfig stuff in the null-ls config!
vim.g.loaded_python3_provider = nil
vim.g.loaded_node_provider = nil
vim.g.python3_host_prog = '/usr/bin/python3'
vim.g.leetcode_browser = 'brave'
vim.g.leetcode_solution_filetype = 'python3'

-- just for savety

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.backup = false


-- scroll off screen, shell and backup skip
--[[ 
smarttab — в случае включения этой опции, нажатие Tab в начале строки 
приведет к добавлению отступа, ширина которого соответствует shiftwidth 
(независимо от значений в tabstop и softtabstop). 
Нажатие на Backspace удалит отступ, а не только один символ, что очень полезно при включенной expandtab. 
Напомню: опция оказывает влияние только на отступы в начале строки, 
в остальных местах используются значения из tabstop и softtabstop.
--]]

vim.opt.scrolloff = 6
vim.opt.shell = 'zsh'
vim.opt.backupskip = '/tmp/*,/private/tmp/*'
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.ai = true -- Auto indent
vim.opt.si = true -- Smart indent
vim.opt.wrap = false -- No wrap line (good for long svg)
vim.opt.backspace = 'start,eol,indent'
vim.opt.path:append { '**' } -- Finding file, Search down into subfolders
vim.opt.wildignore:append { '*/node_modules/*', '*/__pycache__/*' }

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

-- Add astersks in block comments (Trash)
vim.opt.formatoptions:append { 'r' }


