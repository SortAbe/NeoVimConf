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
	on_init = function(client)
		client.server_capabilities.semanticTokensProvider = nil
	end,
	settings = {
		deno = {
			enable = true,
			lint = true,
			unstable = true,
			suggest = {
				autoImports = true,
				completeFunctionCalls = true,
				names = true,
				paths = true,
				imports = {
					hosts = {
						["https://deno.land"] = true,
					},
				},
			},
		},
	},
}
