return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		function mode()
			if vim.api.nvim_get_mode().mode == "n" then
				return " N  "
			elseif vim.api.nvim_get_mode().mode == "c" then
				return " C   "
			elseif vim.api.nvim_get_mode().mode == "i" then
				return " I 󰏪  "
			elseif vim.api.nvim_get_mode().mode == "v" then
				return " v   "
			elseif vim.api.nvim_get_mode().mode == "V" then
				return " V 󰈈  "
			elseif vim.api.nvim_get_mode().mode == "R" then
				return " R   "
			else
				return vim.api.nvim_get_mode().mode
			end
		end
		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = "mellow_dark",
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = false,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
			},
			sections = {
				lualine_a = { mode },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = {},
				lualine_x = { "searchcount", "encoding", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "os.date('%H:%M')" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {},
		})
	end,
}
