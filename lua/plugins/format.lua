return {
	"stevearc/conform.nvim",
	event = "CmdlineEnter",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform will run multiple formatters sequentially
				python = { "isort", "blue" },
				-- Use a sub-list to run only the first available formatter
				javascript = { "prettierd" },
				html = { "prettierd" },
				sh = { "beautysh" },
				sql = { "sql_formatter" },
				php = { "pretty-php" },
				xml = { "xmlformat" },
			},
			lsp_fallback = true,
		})
	end,
}
