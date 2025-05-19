vim.lsp.config["awkls"] = {
	cmd = { "awk-language-server" },
	filetypes = { "awk" },
	root_markers = {
		"*.awk",
	},
	single_file_support = true,
	handlers = {
        ['workspace/workspaceFolders'] = function()
          return {{
            uri = 'file://' .. vim.fn.getcwd(),
            name = 'current_dir',
          }}
        end
	}
}
