local status, prettier = pcall(require, 'prettier')
if (not status) then return end

print("test")

prettier.setup {
  bin = 'prettierd',
  filetypes = {
    'css',
    'javascript',
    'javascriptreact',
    'typescript',
    'typescriptreact',
    'json',
    'scss',
    'less',
    'python'
  }
}
