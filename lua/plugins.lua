return require('packer').startup(function(use)

	use {'wbthomason/packer.nvim'}

	use {'neoclide/coc.nvim', branch = 'release'}

	use { 'nvim-telescope/telescope.nvim', tag = '0.1.5', requires = { {'nvim-lua/plenary.nvim'} }}

	use { 'nvim-treesitter/nvim-treesitter' }

	use { 'NvChad/nvim-colorizer.lua' }

	use { 'nvim-treesitter/playground' }

	use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

end)
