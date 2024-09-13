local lspconfig = require("lspconfig")
local LspEnter = vim.api.nvim_create_augroup("LspEnter", { clear = true })

function oa_function(client, bufnr)
	client.server_capabilities.semanticTokensProvider = nil
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

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

--lspconfig.bashls.setup({ on_attach = oa_function }),
lspconfig.efm.setup({
	on_attach = oa_function,
	handlers = handlers,
	capabilities = capabilities,
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

lspconfig.pyright.setup({
	on_attach = oa_function,
	handlers = handlers,
	capabilities = capabilities,
	cmd = { "pyright-langserver", "--stdio" },
	root_dir = require("lspconfig").util.root_pattern({ "main.py", ".git/", "." }),
	filetypes = {
		"python",
		"yaml",
	},
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
	diagnostic = true,
})

lspconfig.denols.setup({
	on_attach = oa_function,
	handlers = handlers,
	capabilities = capabilities,
	root_dir = require("lspconfig").util.root_pattern({ "index.html", "index.php", ".git/", "." }),
	filetypes = {
		"javascript",
		"typescript",
		"html",
		"typescriptreact",
		"typescript.tsx",
	},
	diagnostic = true,
})

lspconfig.bashls.setup({
	on_attach = oa_function,
	handlers = handlers,
	capabilities = capabilities,
	root_dir = require("lspconfig").util.root_pattern({ ".git/", "." }),
	filetypes = {
		"sh",
	},
	diagnostic = true,
})

lspconfig.html.setup({
	on_attach = oa_function,
	on_attach = oa_function,
	handlers = handlers,
	capabilities = capabilities,
	root_dir = require("lspconfig").util.root_pattern({ "index.html", "index.php", ".git/", "." }),
	filetypes = {
		"templ",
		"html",
	},
	diagnostic = true,
})

lspconfig.phpactor.setup({
	on_attach = oa_function,
	on_attach = oa_function,
	handlers = handlers,
	capabilities = capabilities,
	root_dir = require("lspconfig").util.root_pattern({ "index.php", ".git/", "." }),
	filetypes = {
		"php",
	},
	diagnostic = true,
})

lspconfig.cssls.setup({
	on_attach = oa_function,
	on_attach = oa_function,
	handlers = handlers,
	capabilities = capabilities,
	root_dir = require("lspconfig").util.root_pattern({ "index.html", "index.php", ".git/", "." }),
	filetypes = {
		"css",
		"scss",
		"less",
	},
	diagnostic = true,
})

lspconfig.sqls.setup({
	on_attach = oa_function,
	on_attach = oa_function,
	handlers = handlers,
	capabilities = capabilities,
	root_dir = require("lspconfig").util.root_pattern({ "index.html", "index.php", ".git/", "." }),
	filetypes = {
		"sql",
		"mysql",
	},
	diagnostic = true,
	settings = {
		sqls = {
			connections = {
				{
					driver = "mysql",
					dataSourceName = "abe:xKHOxyThyC7u8f@tcp(127.0.0.1:3306)/University",
				},
				{
					driver = "postgresql",
					dataSourceName = "host=127.0.0.1 port=15432 user=postgres password=mysecretpassword1234 dbname=dvdrental sslmode=disable",
				},
			},
		},
	},
})

lspconfig.rust_analyzer.setup({
	on_attach = oa_function,
	handlers = handlers,
	capabilities = capabilities,
	filetype = { "rust" },
	root_dir = require("lspconfig").util.root_pattern({ "main.rs*", ".git/", "." }),
	diagnostic = true,
})

lspconfig.jdtls.setup({
	on_attach = oa_function,
	handlers = handlers,
	capabilities = capabilities,
	filetype = { "java" },
	root_dir = require("lspconfig").util.root_pattern({ "main.java", ".git/", "." }),
	diagnostic = true,
})

lspconfig.arduino_language_server.setup({
	on_attach = oa_function,
	handlers = handlers,
	capabilities = capabilities,
	filetype = { "arduino" },
	root_dir = require("lspconfig").util.root_pattern({ ".ino", ".git/", "." }),
	diagnostic = true,
})

lspconfig.clangd.setup({
	on_attach = oa_function,
	handlers = handlers,
	capabilities = capabilities,
	filetype = {
		"c",
		"cpp",
		"objc",
		"objcpp",
		"cuda",
		"proto",
	},
	root_dir = require("lspconfig").util.root_pattern({ "main.c", ".git/", "." }),
	diagnostic = true,
})

lspconfig.powershell_es.setup({
	on_attach = oa_function,
	handlers = handlers,
	capabilities = capabilities,
	filetype = {
		"powershell",
		"ps1",
	},
	root_dir = require("lspconfig").util.root_pattern({ ".git/", "." }),
	diagnostic = true,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNew" }, {
	callback = function()
		if vim.api.nvim_buf_get_option(0, "filetype") == "sh" then
			vim.opt.expandtab = true
			vim.opt.shiftwidth = 4
		elseif vim.api.nvim_buf_get_option(0, "filetype") == "python" then
			vim.opt.expandtab = true
			vim.opt.shiftwidth = 4
		elseif vim.api.nvim_buf_get_option(0, "filetype") == "html" then
			vim.opt.expandtab = true
			vim.opt.shiftwidth = 2
		elseif vim.api.nvim_buf_get_option(0, "filetype") == "css" then
			vim.opt.expandtab = true
			vim.opt.shiftwidth = 2
		elseif vim.api.nvim_buf_get_option(0, "filetype") == "java" then
			vim.opt.expandtab = true
			vim.opt.shiftwidth = 2
		elseif vim.api.nvim_buf_get_option(0, "filetype") == "sql" then
			vim.opt.expandtab = true
			vim.opt.shiftwidth = 2
		end
	end,
})
