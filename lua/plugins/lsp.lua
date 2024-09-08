return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.diagnostic.config({
			virtual_text = false,
			signs = {
					text = {
							[vim.diagnostic.severity.ERROR] = "",
							[vim.diagnostic.severity.WARN] = "",
							[vim.diagnostic.severity.INFO] = "󰙎",
							[vim.diagnostic.severity.HINT] = "",
					},
			},
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
