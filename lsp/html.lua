vim.lsp.config["html"] = {
	cmd = { "vscode-html-language-server", "--stdio" },
	detached = true,
	filetypes = {
		"templ",
		"html",
	},
	root_markers = {
		".git/",
		"index.htm*",
	},
	workspace_required = false,
	settings = {},
	init_options = {
		provideFormatter = true,
		embeddedLanguages = { css = true, javascript = true },
		configurationSection = { "html", "css", "javascript" },
	},
}
