vim.lsp.config["efm"] = {
	cmd = {"efm-langserver"},
	detached = true,
	filetypes = {
		"lua",
		"sh",
		"json",
		"yaml",
		"markdown",
	},
	workspace_required = false,
	init_options = { documentFormatting = true },
	root_markers = {
		".git/",
		".",
	},
	settings = {
		languages = {
			vim = {
				{
					lintCommand = "vint -",
					lintSource = "vint",
					lintStdin = true,
					lintFormats = { "%f:%l:%c: %m" },
				},
			},
			sh = {
				{
					formatCommand = "shfmt -i 4 -bn -sr -p -ci",
					formatStdin = true,
					lintCommand = "shellcheck -f gcc -x",
					lintSource = "shellcheck",
					lintFormats = {
						"%f:%l:%c: %trror: %m",
						"%f:%l:%c: %tarning: %m",
						"%f:%l:%c: %tote: %m",
					},
				},
			},
			lua = { { formatCommand = "lua-format -i", formatStdin = true } },
			json = {
				{
					formatCommand = "prettier ${--tab-width:tabWidth} --parser json",
					lintCommand = "jq .",
					lintStdin = true,
				},
			},
			yaml = { { formatCommand = "prettier --stdin-filepath ${INPUT}", formatStdin = true } },
			markdown = { { formatCommand = "prettier --stdin-filepath ${INPUT}", formatStdin = true } },
		},
	},
}
