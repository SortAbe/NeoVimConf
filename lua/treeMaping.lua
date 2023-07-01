--Java
vim.api.nvim_set_hl(0, "@type.qualifier.java", { link = "Typedef" })
vim.api.nvim_set_hl(0, "@type.builtin.java", { link = "StorageClass" })
vim.api.nvim_set_hl(0, "@punctuation.bracket.java", { link = "Special" })


--sql
vim.api.nvim_set_hl(0, "@variable.sql", { link = "Constant" })
vim.api.nvim_set_hl(0, "@field.sql", { link = "StorageClass" })

--html
vim.api.nvim_set_hl(0, "@tag.html", { link = "Tag" })
vim.api.nvim_set_hl(0, "@tag.delimiter.html", { link = "Delimiter" })
vim.api.nvim_set_hl(0, "@tag.attribute.html", { link = "StorageClass" })


--css
vim.api.nvim_set_hl(0, "@property.css", { link = "StorageClass" })
