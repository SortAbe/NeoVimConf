local lspconfig = require("lspconfig")
local LspEnter = vim.api.nvim_create_augroup("LspEnter", { clear = true })

function oa_function(client, bufnr)
	client.server_capabilities.semanticTokensProvider = nil
end

local handlers = {
	["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = border }),
	["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border }),
}

local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
  opts = opts or {}
  opts.border = opts.border or border
  return orig_util_open_floating_preview(contents, syntax, opts, ...)
end

vim.api.nvim_create_autocmd({ "BufNew" }, {
	callback = function()
		not_found = true
	end,
})

function efm()
	lspconfig.efm.setup({
		init_options = { documentFormatting = true },
		root_dir = require("lspconfig").util.root_pattern({ ".git/", "." }),
		filetypes = {
			"lua",
			"sh",
			"json",
			"yaml",
			"markdown",
		},
		settings = {
			rootMarkers = { ".git/" },
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
	})
	not_found = false
end

function pyright()
	lspconfig.pyright.setup({
		on_attach = oa_function,
		cmd = { "pyright-langserver", "--stdio" },
		settings = {
			pyright = { autoImportCompletion = true },
			python = {
				analysis = {
					autoSearchPaths = true,
					diagnosticMode = "openFilesOnly",
					useLibraryCodeForTypes = true,
					typeCheckingMode = "on",
				},
			},
		},
	})
end

vim.api.nvim_create_autocmd({ "BufRead" }, {
	pattern = { "*.sh*" },
	callback = efm,
	lspconfig.bashls.setup({ on_attach = oa_function })
})

local not_found = true
vim.api.nvim_create_autocmd({ "BufRead" }, {
	pattern = { "*.py*" },
	callback = function()
		pyright()
		not_found = false
	end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNew" }, {
	pattern = { "*.js", "*.cjs", "*.mjs", "*.ts", "*.map" },
	callback = function()
		lspconfig.denols.setup({ on_attach = oa_function })
		not_found = false
	end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNew" }, {
	pattern = { "*.html", "*.htm" },
	callback = function()
		lspconfig.html.setup({ on_attach = oa_function })
		not_found = false
	end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNew" }, {
	pattern = { "*.css", "*.less", "*.scss" },
	callback = function()
		lspconfig.cssls.setup({ on_attach = oa_function })
		not_found = false
	end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNew" }, {
	pattern = { "*.rs*" },
	callback = function()
		lspconfig.rust_analyzer.setup({
			on_attach = oa_function,
			handlers = handlers,
			capabilities = capabilities,
			filetype = { "rust" },
			diagnostic = true,
		})
		not_found = false
	end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNew" }, {
	pattern = { "*.java", "*.dpj", "*.jar", "*.jsp", "*.xrb" },
	callback = function()
		lspconfig.jdtls.setup({ on_attach = oa_function })
		not_found = false
		for k, v in pairs(vim.api.nvim_get_hl(11, {})) do
			print("here")
			print(k, v)
		end
	end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNew" }, {
	pattern = { "*.ino", "*.pde", "*.cpp", "*.c", "*.S", "*.tpp", "*.h" },
	callback = function()
		lspconfig.arduino_language_server.setup({ on_attach = oa_function })
		not_found = false
	end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNew" }, {
	pattern = { "*.c", "*.cc", "*.cpp", "*.o", "*.h" },
	callback = function()
		lspconfig.clangd.setup({ on_attach = oa_function })
		not_found = false
	end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNew" }, {
	pattern = { "*.ps1" },
	callback = function()
		lspconfig.powershell_es.setup({ on_attach = oa_function })
		not_found = false
	end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNew" }, {
	callback = function()
		if vim.api.nvim_buf_get_option(0, "filetype") == "sh" then
			efm()
		elseif vim.api.nvim_buf_get_option(0, "filetype") == "python" then
			pyright()
		elseif vim.api.nvim_buf_get_option(0, "filetype") == "html" then
			lspconfig.html.setup({ on_attach = oa_function })
		end
	end,
})
