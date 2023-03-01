local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local status, lspconfig = pcall(require, "lspconfig")
if not status then
	return
end

lspconfig.tailwindcss.setup({})

lspconfig.eslint.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		codeAction = {
			disableRuleComment = {
				enable = true,
				location = "separateLine",
			},
			showDocumentation = {
				enable = true,
			},
		},
		codeActionOnSave = {
			enable = false,
			mode = "all",
		},
		format = true,
		nodePath = "",
		onIgnoredFiles = "off",
		packageManager = "npm",
		quiet = false,
		rulesCustomizations = {},
		run = "onType",
		useESLintClass = false,
		validate = "on",
		workingDirectory = {
			mode = "location",
		},
	},
})

lspconfig.solidity.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

lspconfig.tsserver.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
	cmd = { "typescript-language-server", "--stdio" },
})
lspconfig.html.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
lspconfig.cssls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
lspconfig.pyright.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	root_dir = function()
		return vim.loop.cwd()
	end,
})
lspconfig.emmet_ls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "html", "css", "typescriptreact", "javascriptreact", "javascript" },
	root_dir = function()
		return vim.loop.cwd()
	end,
})

lspconfig.marksman.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

-- Better be and the end
lspconfig.diagnosticls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
