vim.lsp.config["denols"] = {
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
	handlers = {
		["textDocument/definition"] = denols_handler,
		["textDocument/typeDefinition"] = denols_handler,
		["textDocument/references"] = denols_handler,
	},
	on_attach = function(client, bufnr)
		vim.api.nvim_buf_create_user_command(0, "LspDenolsCache", function()
			client:exec_cmd({
				command = "deno.cache",
				arguments = { {}, vim.uri_from_bufnr(bufnr) },
			}, { bufnr = bufnr }, function(err, _result, ctx)
				if err then
					local uri = ctx.params.arguments[2]
					vim.api.nvim_err_writeln("cache command failed for " .. vim.uri_to_fname(uri))
				end
			end)
		end, {
			desc = "Cache a module and all of its dependencies.",
		})
	end,
}
