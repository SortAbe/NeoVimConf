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
			package_uninstalled = "✗"
		}
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
			"sglls",
			"typescript-language-server",
			"black",
		},
	}
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
		"sglls",
		"typescript-language-server",
	}
})

require("lspconfig").arduino_language_server.setup{
	cmd = {
	"arduino-language-server",
	"-cli", "/home/abe/.local/bin/arduino-cli",
	"-cli-config", "/home/abe/.arduino15/arduino-cli.yaml",
	"-fqbn", "arduino:avr:uno"
	}
}

function oa_function(client, bufnr)
    client.server_capabilities.semanticTokensProvider = nil
end

require("lspconfig").bashls.setup{}
require("lspconfig").clangd.setup{}
require("lspconfig").cssls.setup{}
require("lspconfig").jdtls.setup{}
require("lspconfig").html.setup{}
require("lspconfig").powershell_es.setup{}
require("lspconfig").pyright.setup{ on_attach = oa_function, capabilities = capabilities, filetype = {"python"}}
require("lspconfig").rust_analyzer.setup{ on_attach = oa_function, capabilities = capabilities, filetype = {"rust"}, diagnostic = true}
require("lspconfig").sqlls.setup{}
require("lspconfig").tsserver.setup{on_attach = oa_function}

vim.fn.sign_define('DiagnosticSignError', { text = '', texthl = 'DiagnosticSignError'})
vim.fn.sign_define('DiagnosticSignWarn', { text = '', texthl = 'DiagnosticSignWarn'})
vim.fn.sign_define('DiagnosticSignInfo', { text = '󰙎', texthl = 'DiagnosticSignInfo'})
vim.fn.sign_define('DiagnosticSignHint', { text = '', texthl = 'DiagnosticSignHint'})

vim.diagnostic.config({
  virtual_text = false
})
-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
