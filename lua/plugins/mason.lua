return {
	"williamboman/mason.nvim",
	event = "CmdlineEnter",
	config = function()
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
					"sqls",
					"typescript-language-server",
					"blue",
					"bash-language-server bashls",
					"beautysh",
					"black",
					"blue",
					"deno denols",
					"efm",
					"phpactor",
					"prettierd",
					"pretty-php",
					"rust-analyzer rust_analyzer",
					"shellcheck",
					"sql-formatter",
					"stylua",
					"vint"
				},
			},
		})
	end,
}
