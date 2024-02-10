return{"williamboman/mason.nvim", event = "InsertEnter", config = function()
require("mason") .setup({
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
			"sqls",
			"typescript-language-server",
			"blue",
		},
	},
})
end}
