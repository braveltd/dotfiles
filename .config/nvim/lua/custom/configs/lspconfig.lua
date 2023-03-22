local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "clangd" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- 
lspconfig.emmet_ls.setup {}

lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities= capabilities,
  filetypes = {"typescript", "typescriptreact", "typescript.tsx"}
}
