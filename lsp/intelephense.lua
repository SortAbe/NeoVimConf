vim.lsp.config["intelephense"] = {
	cmd = { "intelephense", "--stdio"},
	filetypes = { "php" },
	workspace_required = false,
	root_markers = {vim.loop.cwd()},
	settings = {
		intelephense = {
			telemetry = {
				enabled = false,
			},
			environment = {
				includePaths = {
					"",
				},
			},
		},
	},
}
