--Background
vim.api.nvim_set_hl(0, "Normal", {fg = "NONE", bg = "#1D1D1D"})

--Language
vim.api.nvim_set_hl(0, "Type", {fg = "#D4D4D4", gui=bold })
vim.api.nvim_set_hl(0, "Keyword", {fg = "#569CD6" })
vim.api.nvim_set_hl(0, "PreProc", {fg = "#569CD6" })

vim.api.nvim_set_hl(0, "Variable", {fg = "#D4D4D4" })
vim.api.nvim_set_hl(0, "Boolean", {fg = "#569CD6" })
vim.api.nvim_set_hl(0, "Number", {fg = "#CC856A" })
vim.api.nvim_set_hl(0, "String", {fg = "#64994C" })
vim.api.nvim_set_hl(0, "Constant", {fg = "#4EA006" })

vim.api.nvim_set_hl(0, "Comment", {fg = "#777777", bg = "NONE" })

vim.api.nvim_set_hl(0, "Function", {fg = "#D3CB7E" })
vim.api.nvim_set_hl(0, "Macro", {fg = "#D3CB7E" })
vim.api.nvim_set_hl(0, "Special", {fg = "#957FB8" })
vim.api.nvim_set_hl(0, "Parameter", {fg = "#82AAFF" })
vim.api.nvim_set_hl(0, "Delimiter", {fg = "#FFD700" })

vim.api.nvim_set_hl(0, "Statement", {fg = "#D35675", gui=bold })
vim.api.nvim_set_hl(0, "Identifier", {fg = "#FF80FF" })
vim.api.nvim_set_hl(0, "Typedef", {fg = "#D4D4D4", gui=bold })
vim.api.nvim_set_hl(0, "SpecialComment", {fg = "#00FF00" })

--HTML
vim.api.nvim_set_hl(0, "Tag", {fg = "#5E409D" })
vim.api.nvim_set_hl(0, "StorageClass", {fg = "#CE5D97", gui=bold })
vim.api.nvim_set_hl(0, "Title", {fg = "#FF80FF" })
--End Of Language
