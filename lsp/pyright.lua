vim.lsp.config["pyright"] = {
	filetypes = {
		"python",
	},
	root_markers = {
		".git/",
	},
	cmd = { "pyright-langserver", "--stdio" },
	workspace_required = false,
	settings = {
		python = {
			analysis = {
				autoSearchPaths = true,
				diagnosticMode = "openFilesOnly",
				useLibraryCodeForTypes = true,
				typeCheckingMode = "on",
				extraPaths = { "~/.local/lib/python3.11/site-packages", "/usr/lib/python3/dist-packages" },
				diagnosticSeverityOverrides = { reportAttributeAccessIssue = "none",},
				pythonVersion = "3.11",
				pythonPlatform = "Linux",
			},
		},
	},
}
