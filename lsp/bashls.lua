vim.lsp.config["bashls"] = {
	filetypes = { "bash", "sh" },
	workspace_required = false,
	root_markers = { "." },
	cmd = { "bash-language-server", "start" },
	settings = {
		bashIde = {
			globPattern = vim.env.GLOB_PATTERN or "*@(.sh|.inc|.bash|.command)",
		},
	},
}
