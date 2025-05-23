vim.lsp.config["arduino_language_server"] = {
	filetypes = {
		"arduino",
	},
	root_dir = function(bufnr, on_dir)
		local fname = vim.api.nvim_buf_get_name(bufnr)
		on_dir(util.root_pattern("*.ino")(fname))
	end,
	workspace_required = false,
	cmd = {
		"arduino-language-server",
	},
	capabilities = {
		textDocument = {
			semanticTokens = vim.NIL,
		},
		workspace = {
			semanticTokens = vim.NIL,
		},
	},
}
