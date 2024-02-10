return { "williamboman/mason-lspconfig.nvim", event = "BufEnter", config = function()
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
end}
