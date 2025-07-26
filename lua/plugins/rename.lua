return {
	"nvimdev/lspsaga.nvim",
	event = "VeryLazy",
	config = function()
		require("lspsaga").setup({
			lightbulb = {
				sign = false,
			},
			symbol_in_winbar = {
				enable = false,
				separator = " › ",
				hide_keyword = false,
				ignore_patterns = nil,
				show_file = false,
				folder_level = 0,
				color_mode = true,
				delay = 300,
			},
			ui = {
				code_action = "",
			},
		})
	end,
	dependencies = {
		"nvim-treesitter/nvim-treesitter", -- optional
		"nvim-tree/nvim-web-devicons", -- optional
	},
}
