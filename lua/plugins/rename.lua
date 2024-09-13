return {
	"nvimdev/lspsaga.nvim",
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
				show_file = true,
				folder_level = 1,
				color_mode = true,
				delay = 300,
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
