require("mason").setup({
	registries = {
		"github:mason-org/mason-registry",
	},
	providers = {
		"mason.providers.registry-api",
		"mason.providers.client",
	},
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
	opts = {
		ensured_installed = {
			"arduino-language-server",
			"bash-language-server",
			"clangd",
			"css-lsp",
			"jdtls",
			"html-lsp",
			"powershell-editor-services",
			"pyright",
			"rust-analyzer",
			"sgls",
			"typescript-language-server",
			"black",
		},
	},
})
require("mason-lspconfig").setup({
	ensured_installed = {
		"arduino-language-server",
		"bash-language-server",
		"clangd",
		"css-lsp",
		"jdtls",
		"html-lsp",
		"powershell-editor-services",
		"pyright",
		"rust-analyzer",
		"sgls",
		"typescript-language-server",
	},
})

require("lspconfig").arduino_language_server.setup({})

function oa_function(client, bufnr)
	client.server_capabilities.semanticTokensProvider = nil
end

require("lspconfig").bashls.setup({})
require("lspconfig").clangd.setup({})
require("lspconfig").cssls.setup({})
require("lspconfig").jdtls.setup({})
require("lspconfig").html.setup({})
require("lspconfig").powershell_es.setup({})
require("lspconfig").pyright.setup({ on_attach = oa_function, capabilities = capabilities, filetype = { "python" } })
require("lspconfig").rust_analyzer.setup({
	on_attach = oa_function,
	capabilities = capabilities,
	filetype = { "rust" },
	diagnostic = true,
})
require("lspconfig").tsserver.setup({ on_attach = oa_function })

require("lspconfig").sqls.setup({
	on_attach = oa_function,
	capabilities = capabilities,
	filetype = { "sqls" },
	diagnostic = true,
	settings = {
		sqls = {
			connections = {
				{
					--dataSourceName = 'host=209.133.192.178 port=7707 user=lsp password=$GK8hlg6*_9 dbname=mysql sslmode=disable',
					alias = "lsp",
					driver = "mysql",
					proto = "tcp",
					user = "lsp",
					passwd = "$GK8hlg6*_9",
					host = "209.133.192.178",
					port = "7707",
					dbName = "University",
				},
			},
		},
	},
})

vim.fn.sign_define("DiagnosticSignError", { text = "", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = "", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = "󰙎", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })

vim.diagnostic.config({
	virtual_text = false,
})

-- Show line diagnostics automatically in hover window
local Hover = vim.api.nvim_create_augroup("Hover", { clear = true })
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
	pattern = "*.*",
	callback = function()
		vim.diagnostic.open_float(nil, { focus = false })
	end,
	group = "Hover",
})
