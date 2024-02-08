require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		-- Conform will run multiple formatters sequentially
		python = { "isort", "blue" },
		-- Use a sub-list to run only the first available formatter
		--javascript = { { "prettierd", "prettier" } },
		sh = { "beautysh" },
		sql = { "sql_formatter" },
	},
	lsp_fallback = true,
})
