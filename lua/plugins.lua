return require('packer').startup(function(use)

	use {'wbthomason/packer.nvim'}

	use {'neoclide/coc.nvim', branch = 'release'}

	use { 'nvim-telescope/telescope.nvim', tag = '0.1.5', requires = { {'nvim-lua/plenary.nvim'} }}

	use { 'nvim-treesitter/nvim-treesitter' }

	use { 'NvChad/nvim-colorizer.lua' }

	use { 'nvim-treesitter/playground' }

	use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'} --Will require nerd fonts
	--which can be found here: https://www.nerdfonts.com/font-downloads

	use { 'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true } }

	use { "nvim-neo-tree/neo-tree.nvim", branch = "v3.x", requires = { "nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		}
	}
end)
