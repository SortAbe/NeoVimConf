return require('packer').startup(function(use)

	use { 'wbthomason/packer.nvim'}

	use { 'nvim-telescope/telescope.nvim', tag = '0.1.5', requires = { {'nvim-lua/plenary.nvim'} }}

	use { 'nvim-treesitter/nvim-treesitter' }

	use { 'williamboman/mason.nvim', 'williamboman/mason-lspconfig.nvim', 'neovim/nvim-lspconfig' }

	use { 'windwp/nvim-autopairs', config = function() require('nvim-autopairs').setup {} end }

	use { 'NvChad/nvim-colorizer.lua' }

	use { 'nvim-treesitter/playground' }

	use { 'akinsho/bufferline.nvim', tag = '*', requires = 'nvim-tree/nvim-web-devicons'} --Requires nerdfonts: https://www.nerdfonts.com/font-downloads

	use { 'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true }}

	use { 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path', 'hrsh7th/cmp-cmdline', 'hrsh7th/nvim-cmp',
		'L3MON4D3/LuaSnip', 'rafamadriz/friendly-snippets', 'hrsh7th/cmp-nvim-lsp', 'saadparwaiz1/cmp_luasnip' 
	}

	use { 'nvim-neo-tree/neo-tree.nvim', branch = 'v3.x', requires = { 'nvim-lua/plenary.nvim',
		'nvim-tree/nvim-web-devicons', 'MunifTanjim/nui.nvim',
		'3rd/image.nvim', -- Optional image support in preview window: See `# Preview Mode` for more information
		}
	}

	use({ "jackMort/ChatGPT.nvim", config = function() require("chatgpt").setup() end,
		requires = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim", "folke/trouble.nvim",
		"nvim-telescope/telescope.nvim" } })

	use { 'mhartington/formatter.nvim' } --Not yet implemented

end)
