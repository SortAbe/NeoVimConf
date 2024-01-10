--NumlineToggle
vim.api.nvim_create_user_command('Num',
  function(opts)
	if vim.o.number then
		vim.cmd("set nornu")
		vim.cmd("set signcolumn=no")
		vim.cmd("set nu!")
	else
		vim.cmd("set nu")
		vim.cmd("set rnu")
		vim.cmd("set signcolumn=number")
	end
  end,
{ nargs = 0 })

vim.api.nvim_create_user_command('Spell',
  function(opts)
	if vim.o.spell then
		vim.cmd("set nospell")
	else
		vim.cmd("set spell")
	end
  end,
{ nargs = 0 })


vim.api.nvim_create_user_command('Cap',
  function(opts)
    vim.cmd("silent! %s/\\<where\\>/\\U&/g")
    vim.cmd("silent! %s/\\<select\\>/\\U&/g")
    vim.cmd("silent! %s/\\<insert\\>/\\U&/g")
    vim.cmd("silent! %s/\\<delete\\>/\\U&/g")
    vim.cmd("silent! %s/\\<truncate\\>/\\U&/g")
    vim.cmd("silent! %s/\\<values\\>/\\U&/g")
    vim.cmd("silent! %s/\\<from\\>/\\U&/g")
    vim.cmd("silent! %s/\\<group\\>/\\U&/g")
    vim.cmd("silent! %s/\\<having\\>/\\U&/g")
    vim.cmd("silent! %s/\\<join\\>/\\U&/g")
    vim.cmd("silent! %s/\\<outer\\>/\\U&/g")
    vim.cmd("silent! %s/\\<full\\>/\\U&/g")
    vim.cmd("silent! %s/\\<create\\>/\\U&/g")
    vim.cmd("silent! %s/\\<database\\>/\\U&/g")
    vim.cmd("silent! %s/\\<table\\>/\\U&/g")
    vim.cmd("silent! %s/\\<on\\>/\\U&/g")
    vim.cmd("silent! %s/\\<by\\>/\\U&/g")
    vim.cmd("silent! %s/\\<as\\>/\\U&/g")
    vim.cmd("silent! %s/\\<right\\>/\\U&/g")
    vim.cmd("silent! %s/\\<left\\>/\\U&/g")
    vim.cmd("silent! %s/\\<null\\>/\\U&/g")
    vim.cmd("silent! %s/\\<is\\>/\\U&/g")
	vim.cmd("noh")
  end,
{ nargs = 0 })

vim.api.nvim_create_user_command('Cl',
  function(opts)
    vim.cmd("silent! %y+")
  end,
{ nargs = 0 })

vim.api.nvim_create_user_command('Update',
  function(opts)
    vim.cmd("PackerSync")
    vim.cmd("TSUpdate")
    vim.cmd("CocUpdate")
  end,
{ nargs = 0 })
