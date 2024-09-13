return {
	"nvimdev/lspsaga.nvim",
	config = function()
		require("lspsaga").setup({
			lightbulb = {
				sign = false,
			},
			ui = {
				code_action = "",
			},
			symbol_in_winbar = {
				enable = false,
				show_file = false,
				folder_level = 0,
			},
		})
	end,
	dependencies = {
		"nvim-treesitter/nvim-treesitter", -- optional
		"nvim-tree/nvim-web-devicons", -- optional
	},
}
