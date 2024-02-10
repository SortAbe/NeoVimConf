return require("packer").startup(function(use)
	use({ "wbthomason/packer.nvim" }) --Package manager

	use({ "nvim-telescope/telescope.nvim", tag = "0.1.5", requires = { { "nvim-lua/plenary.nvim" } } }) --Navigation

	use({ "nvim-treesitter/nvim-treesitter" }) --Syntax and semantics

	use({
		"nvim-treesitter/nvim-treesitter-textobjects",
		after = "nvim-treesitter",
		requires = "nvim-treesitter/nvim-treesitter",
	}) --Extended motions

	use({ "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim", "neovim/nvim-lspconfig" }) --LSP manager

	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	}) --pairing "" () [] {}

	use({ "NvChad/nvim-colorizer.lua" }) --Color adder

	use({ "christoomey/vim-tmux-navigator" }) --Ability to map ctrl hjkl with tmux

	use({ "stevearc/conform.nvim" }) --Formatting

	use({ "akinsho/bufferline.nvim", tag = "*", requires = "nvim-tree/nvim-web-devicons" }) --Tab line
	--Requires nerdfonts: https://www.nerdfonts.com/font-downloads

	use({ "nvim-lualine/lualine.nvim", requires = { "nvim-tree/nvim-web-devicons", opt = true } }) --Status line

	use({
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/nvim-cmp",
		"L3MON4D3/LuaSnip",
		"rafamadriz/friendly-snippets",
		"hrsh7th/cmp-nvim-lsp",
		"saadparwaiz1/cmp_luasnip",
	}) --Auto completion

	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim",
		},
	}) -- Optional image support in preview window: See `# Preview Mode` for more information

	use({
		"jackMort/ChatGPT.nvim",
		config = function()
			require("chatgpt").setup()
		end,
		requires = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"folke/trouble.nvim",
			"nvim-telescope/telescope.nvim",
		},
	}) --ChatGPT
end)
