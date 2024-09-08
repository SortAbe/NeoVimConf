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
		root_dir = require("lspconfig").util.root_pattern({ "main.py", ".git/" , "." }),
		settings = {
			pyright = { autoImportCompletion = true },
			python = {
				analysis = {
					autoSearchPaths = true,
					diagnosticMode = "openFilesOnly",
					useLibraryCodeForTypes = true,
					typeCheckingMode = "on",
					diagnosticSeverityOverrides = {
						reportAttributeAccessIssue = "none",
					},
				},
			},
		},
	})
end

vim.api.nvim_create_autocmd({ "BufRead" }, {
	pattern = { "*.sh*" },
	callback = efm,
	lspconfig.bashls.setup({ on_attach = oa_function }),
})

local not_found = true
local rust_run = false
local java_run = false
local python_run = false
local js_run = false
local bash_run = false
local html_run = false
local php_run = false
local css_run = false
local sql_run = false
local c_run = false
local arduino_run = false
local ps_run = false

vim.api.nvim_create_autocmd({ "BufRead" }, {
	pattern = { "*.py*" },
	callback = function()
		if python_run then
			return
		end
		pyright()
		not_found = false
		python_run = true
	end,
})

vim.api.nvim_create_autocmd({ "BufRead" }, {
	pattern = { "*.sh*" },
	callback = function()
		if bash_run then
			return
		end
		efm()
		not_found = false
		bash_run = true
	end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNew" }, {
	pattern = { "*.js", "*.cjs", "*.mjs", "*.ts", "*.map" },
	callback = function()
		if js_run then
			return
		end
		lspconfig.denols.setup({ on_attach = oa_function,
			root_dir = require("lspconfig").util.root_pattern({ "index.html", "index.php", ".git/" , "." }),
		})
		not_found = false
		js_run = true
		vim.opt.expandtab = true
		vim.opt.shiftwidth = 2
	end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNew" }, {
	pattern = { "*.html", "*.htm" },
	callback = function()
		if html_run then
			return
		end
		lspconfig.html.setup({ on_attach = oa_function,
			root_dir = require("lspconfig").util.root_pattern({ "index.html", "index.php", ".git/" , "." }),
		})
		not_found = false
		html_run = true
	end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNew" }, {
	pattern = { "*.php" },
	callback = function()
		if php_run then
			return
		end
		lspconfig.phpactor.setup({ on_attach = oa_function,
			root_dir = require("lspconfig").util.root_pattern({"index.php", ".git/" , "." }),
		})
		not_found = false
		php_run = true
		root_dir = function(fname)
			vim.cmd("e reached")
			return nvim_lsp.util.root_pattern(
				'index.html', 'index.php', '.git'
			)(fname) or vim.fn.getcwd()
		end
	end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNew" }, {
	pattern = { "*.css", "*.less", "*.scss" },
	callback = function()
		if css_run then
			return
		end
		lspconfig.cssls.setup({ on_attach = oa_function,
			root_dir = require("lspconfig").util.root_pattern({ "index.html", "index.php", ".git/" , "." }),
		})
		not_found = false
		css_run = true
	end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNew" }, {
	pattern = { "*.sql" },
	callback = function()
		if sql_run then
			return
		end
		lspconfig.sqls.setup({ on_attach = oa_function,
			root_dir = require("lspconfig").util.root_pattern({ "index.html", "index.php", ".git/" , "." }),
		})
		not_found = false
		sql_run = true
	end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNew" }, {
	pattern = { "*.rs*" },
	callback = function()
		if rust_run then
			return
		end
		lspconfig.rust_analyzer.setup({
			on_attach = oa_function,
			handlers = handlers,
			capabilities = capabilities,
			filetype = { "rust" },
			root_dir = require("lspconfig").util.root_pattern({ "main.rs*", ".git/" , "." }),
			diagnostic = true,
		})
		not_found = false
		rust_run = true
	end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNew" }, {
	pattern = { "*.java", "*.dpj", "*.jar", "*.jsp", "*.xrb" },
	callback = function()
		if java_run then
			return
		end
		lspconfig.jdtls.setup({ on_attach = oa_function })
		not_found = false
		java_run = true
	end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNew" }, {
	pattern = { "*.ino", "*.pde", "*.cpp", "*.c", "*.S", "*.tpp", "*.h" },
	callback = function()
		if arduino_run then
			return
		end
		lspconfig.arduino_language_server.setup({ on_attach = oa_function })
		not_found = false
		arduino_run = true
	end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNew" }, {
	pattern = { "*.c", "*.cc", "*.cpp", "*.o", "*.h" },
	callback = function()
		if c_run then
			return
		end
		lspconfig.clangd.setup({ on_attach = oa_function })
		not_found = false
		c_run = true
	end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNew" }, {
	pattern = { "*.ps1" },
	callback = function()
		if ps_run then
			return
		end
		lspconfig.powershell_es.setup({ on_attach = oa_function })
		not_found = false
		ps_run = true
	end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNew" }, {
	callback = function()
		if vim.api.nvim_buf_get_option(0, "filetype") == "sh" then
			if bash_run then
				return
			end
			efm()
		elseif vim.api.nvim_buf_get_option(0, "filetype") == "python" then
			if python_run then
				return
			end
			pyright()
		elseif vim.api.nvim_buf_get_option(0, "filetype") == "html" then
			if html_run then
				return
			end
			lspconfig.html.setup({ on_attach = oa_function })
		end
	end,
})
