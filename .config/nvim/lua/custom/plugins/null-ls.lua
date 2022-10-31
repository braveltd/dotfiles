local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local lsp_formatting = function(bufnr)
  vim.lsp.buf.format({
    filter = function(client)
      return client.name == "null-ls"
    end,
    bufnr = bufnr,
  })
end

null_ls.setup {
  sources = {
    null_ls.builtins.formatting.prettierd,
    null_ls.builtins.diagnostics.eslint_d.with({
      diagnostics_format = '[eslint] #{m}\n(#{c})'
    }),
    null_ls.builtins.diagnostics.fish
  },
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          lsp_formatting(bufnr)
        end,
      })
    end
  end
}

vim.api.nvim_create_user_command(
  'DisableLspFormatting',
  function()
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = 0 })
  end,
  { nargs = 0 }
)

-- local null_ls = require "null-ls"
-- local b = null_ls.builtins
--
-- local sources = {
--    b.formatting.prettierd.with { filetypes = { "html", "markdown", "css", "python" } },
--    b.formatting.deno_fmt,
--
--    -- Lua
--    b.formatting.stylua,
--    b.diagnostics.luacheck.with { extra_args = { "--global vim" } },
--
--    -- Shell
--    b.formatting.shfmt,
--    b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
-- }
--
-- local M = {}
--
-- M.setup = function()
--    null_ls.setup {
--       debug = true,
--       sources = sources,
--
--       -- format on save
--       on_attach = function(client)
--          if client.resolved_capabilities.document_formatting then
--             vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
--          end
--       end,
--    }
-- end
--
-- return M
