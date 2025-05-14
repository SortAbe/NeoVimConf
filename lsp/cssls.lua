vim.lsp.config["cssls"] = {
	filetypes = {
		"css",
		"scss",
		"less",
	},
	root_markers = {
		"index.htm*",
		"index.php",
		".htaccess",
	},
	cmd = { "vscode-css-language-server", "--stdio" },
	workspace_required = false,
	settings = {
		css = { validate = true },
		scss = { validate = true },
		less = { validate = true },
	},
	init_options = { provideFormatter = true }, --Formatting
}
