return {
	"mason-org/mason.nvim",
	event = "CmdlineEnter",
	config = function()
		require("mason").setup({
			install_root_dir = vim.fn.expand('$HOME/.bin/lsp'),
			path = "append",
			max_concurrent_installers = 6,
			registries = {
				"github:mason-org/mason-registry",
			},
			providers = {
				"mason.providers.registry-api",
				"mason.providers.client",
			},
			ui = {
				backdrop = 60,
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})
	end,
}
