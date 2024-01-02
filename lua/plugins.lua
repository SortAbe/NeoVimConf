return require('packer').startup(function(use)

  use { 'wbthomason/packer.nvim' }

  use {'neoclide/coc.nvim', branch = 'release'}

  use { 'nvim-telescope/telescope.nvim', tag = '0.1.1', requires = { {'nvim-lua/plenary.nvim'} }}

  use { 'nvim-treesitter/nvim-treesitter' }

  use { 'NvChad/nvim-colorizer.lua' }

  use { 'nvim-treesitter/playground' }

end)
