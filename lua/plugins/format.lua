return {
	"stevearc/conform.nvim",
	event = "CmdlineEnter",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				javascript = { "prettierd", "prettier", stop_after_first = true },
				css = { "prettierd", "prettier", stop_after_first = true },
				html = { "prettierd", "prettier", stop_after_first = true },
				sh = { "beautysh" },
				sql = { "sql_formatter" },
				php = { "pretty-php" },
				xml = { "xmlformat" },
				markdown = { "mdformat" },
			},
			lsp_fallback = true,
		})
	end,
}
