vim.lsp.config["arduino_language_server"] = {
	filetypes = {
		"arduino",
	},
	root_markers = {
		"*.ino",
	},
	workspace_required = false,
	cmd = {
		"arduino-language-server",
	},
	capabilities = {
		textDocument = {
			semanticTokens = nil,
		},
		workspace = {
			semanticTokens = nil,
		},
	},
}
