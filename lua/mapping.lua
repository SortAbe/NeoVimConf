--Java
vim.api.nvim_set_hl(0, "@type.builtin.java", { link = "Type" })
vim.api.nvim_set_hl(0, "@punctuation.bracket.java", { link = "Delimiter" })
vim.api.nvim_set_hl(0, "@variable.java", { link = "Variable" })
vim.api.nvim_set_hl(0, "@keyword.import.java", { link = "PreProc" })

--SQL
vim.api.nvim_set_hl(0, "@variable.sql", { link = "Constant" })
vim.api.nvim_set_hl(0, "@field.sql", { link = "StorageClass" })

--HTML
vim.api.nvim_set_hl(0, "@tag.html", { link = "Tag" })
vim.api.nvim_set_hl(0, "@tag.delimiter.html", { link = "Delimiter" })
vim.api.nvim_set_hl(0, "@tag.attribute.html", { link = "StorageClass" })

--CSS
vim.api.nvim_set_hl(0, "@property.css", { link = "StorageClass" })

--JavaScript
vim.api.nvim_set_hl(0, "@type.builtin.javascript", { link = "Type" })
vim.api.nvim_set_hl(0, "@constructor.javascript", { link = "Type" })
vim.api.nvim_set_hl(0, "@property.javascript", { link = "StorageClass" })
vim.api.nvim_set_hl(0, "@variable.member.javascript", { link = "Identifier" })
vim.api.nvim_set_hl(0, "@variable.javascript", { link = "Variable" })
vim.api.nvim_set_hl(0, "@keyword.javascript", { link = "Special" })
vim.api.nvim_set_hl(0, "@variable.builtin.javascript", { link = "Keyword" })

--Python
vim.api.nvim_set_hl(0, "@string.python", { link = "@spell" })
vim.api.nvim_set_hl(0, "@string.python", { link = "String" })
vim.api.nvim_set_hl(0, "@constructor.python", { link = "Type" })
vim.api.nvim_set_hl(0, "@string.regexp.python", { link = "SpecialComment" })
vim.api.nvim_set_hl(0, "@variable.python", { link = "Variable" })
vim.api.nvim_set_hl(0, "@keyword.directive.python", { link = "PreProc" })
vim.api.nvim_set_hl(0, "@keyword.import.python", { link = "PreProc" })
vim.api.nvim_set_hl(0, "@variable.parameter.python", { link = "Parameter" })
vim.api.nvim_set_hl(0, "@boolean.python", { link = "Boolean" })

--Rust
vim.api.nvim_set_hl(0, "@function.macro.rust", { link = "Macro" })
vim.api.nvim_set_hl(0, "@keyword.rust", { link = "Keyword" })

--Text
vim.api.nvim_set_hl(0, "@text.note", { link = "Todo" })
