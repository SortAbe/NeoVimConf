return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.fn.sign_define("DiagnosticSignError", { text = "", texthl = "DiagnosticSignError" })
		vim.fn.sign_define("DiagnosticSignWarn", { text = "", texthl = "DiagnosticSignWarn" })
		vim.fn.sign_define("DiagnosticSignInfo", { text = "󰙎", texthl = "DiagnosticSignInfo" })
		vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })

		vim.diagnostic.config({
			virtual_text = false,
		})
		-- Show line diagnostics automatically in hover window
		local Hover = vim.api.nvim_create_augroup("Hover", { clear = true })
		vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
			pattern = "*.*",
			callback = function()
				vim.diagnostic.open_float(nil, { focus = false })
			end,
			group = "Hover",
		})
	end,
}
