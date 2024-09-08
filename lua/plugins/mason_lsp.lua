return {
	"williamboman/mason-lspconfig.nvim",
	config = function()
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
				"beautysh",
				"black",
				"blue",
				"efm",
				"jdtls",
				"phpactor",
				"prettierd",
				"pretty-php",
				"pyright",
				"shellcheck",
				"sql-formatter",
				"stylua",
				"vint",
			},
		})
	end,
}
