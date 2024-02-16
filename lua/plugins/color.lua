return{ "norcalli/nvim-colorizer.lua", event = "CmdlineEnter", config = function() 
    require'colorizer'.setup()
    vim.cmd(":ColorizerAttachToBuffer")
end}
