return {
	cmd = { "deno", "lsp" },
	detached = true,
	cmd_env = { NO_COLOR = true },
	filetypes = {
		"javascript",
		"javascriptreact",
		"javascript.jsx",
		"typescript",
		"typescriptreact",
		"typescript.tsx",
	},
	root_markers = {
		"index.htm*",
		"index.htm*",
		"deno.json",
		"deno.jsonc",
		".git",
	},
	settings = {
		deno = {
			enable = true,
			suggest = {
				imports = {
					hosts = {
						["https://deno.land"] = true,
					},
				},
			},
		},
	},
}
