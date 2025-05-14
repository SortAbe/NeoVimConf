vim.lsp.config["html"] = {
	filetypes = {
		"templ",
		"html",
	},
	root_markers = {
		".git/",
		"index.htm*",
	},
	workspace_required = false,
	cmd = { "vscode-html-language-server", "--stdio" },
	settings = {},
	init_options = {
		provideFormatter = true,
		embeddedLanguages = { css = true, javascript = true },
		configurationSection = { "html", "css", "javascript" },
	},
}
