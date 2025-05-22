vim.api.nvim_create_autocmd({ "BufRead", "BufNew" }, {
	callback = function()
		if vim.api.nvim_buf_get_option(0, "filetype") == "sh" then
			vim.opt.expandtab = true
			vim.opt.shiftwidth = 4
		elseif vim.api.nvim_buf_get_option(0, "filetype") == "python" then
			vim.opt.expandtab = true
			vim.opt.shiftwidth = 4
		elseif vim.api.nvim_buf_get_option(0, "filetype") == "php" then
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
		elseif vim.api.nvim_buf_get_option(0, "filetype") == "javascript" then
			vim.opt.expandtab = true
			vim.opt.shiftwidth = 2
		elseif vim.api.nvim_buf_get_option(0, "filetype") == "sql" then
			vim.opt.expandtab = true
			vim.opt.shiftwidth = 2
		elseif vim.api.nvim_buf_get_option(0, "filetype") == "awk" then
			vim.opt.expandtab = true
			vim.opt.shiftwidth = 2
		end
	end,
})
