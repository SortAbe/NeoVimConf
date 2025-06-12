vim.lsp.config["bashls"] = {
	cmd = { "bash-language-server", "start" },
	detached = true,
	filetypes = { "bash", "sh" },
	workspace_required = false,
	root_markers = { "." },
	settings = {
		bashIde = {
			globPattern = vim.env.GLOB_PATTERN or "*@(.sh|.inc|.bash|.command)",
		},
	},
}
