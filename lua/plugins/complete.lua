return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"L3MON4D3/LuaSnip",
		"rafamadriz/friendly-snippets",
		"hrsh7th/cmp-nvim-lsp",
		"saadparwaiz1/cmp_luasnip",
		"windwp/nvim-autopairs",
	},
	config = function()
		require("luasnip.loaders.from_vscode").lazy_load()
		local cmp_autopairs = require("nvim-autopairs.completion.cmp")
		local cmp = require("cmp")

		local icons = {
			Text = "",
			Function = "",
			Field = "",
			Method = "",
			Property = "",
			Snippet = "󰆐",
			Variable = "󰓹",
			Class = "󰠱",
			Keyword = "󰌆",
		}

		cmp.setup({
			preselect = cmp.PreselectMode.None,
			completion = { completeopt = "noselect" },
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			window = {
				completion = cmp.config.window.bordered({
					border = "single",
					winhighlight = "Normal:Pmenu,FloatBorder:PmenuThumb,CursorLine:PmenuSel",
				}),
				documentation = cmp.config.window.bordered({
					border = "single",
					winhighlight = "Normal:Pmenu,FloatBorder:PmenuThumb,CursorLine:PmenuSel",
				}),
			},
			formatting = {
				format = function(_, vim_item)
					vim_item.kind = (icons[vim_item.kind] or "") .. " " .. vim_item.kind
					return vim_item
				end,
			},
			experimental = {
				ghost_text = true,
			},
			mapping = cmp.mapping.preset.insert({
				["<Tab>"] = cmp.mapping.select_next_item(),
				["<S-Tab>"] = cmp.mapping.select_prev_item(),
				["<C-k>"] = cmp.mapping.scroll_docs(-4),
				["<C-j>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
			}),
			sources = cmp.config.sources(
				{ { name = "luasnip" }, { name = "nvim_lsp" }, { name = "buffer" } },
				{ { name = "path" } }
			),
		})
		cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

		-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
		cmp.setup.cmdline(":", {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
				{ name = "cmdline" },
			}, {
				{ name = "path" },
			}),
		})

		vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { link = "Constant" })
		vim.api.nvim_set_hl(0, "CmpItemKindText", { link = "Constant" })
		vim.api.nvim_set_hl(0, "CmpItemKindMethod", { link = "Function" })
		vim.api.nvim_set_hl(0, "CmpItemKindFunction", { link = "Function" })
		vim.api.nvim_set_hl(0, "CmpItemKindConstructor", { link = "Keyword" })
		vim.api.nvim_set_hl(0, "CmpItemKindField", { link = "Property" })
		vim.api.nvim_set_hl(0, "CmpItemKindVariable", { link = "Variable" })
		vim.api.nvim_set_hl(0, "CmpItemKindClass", { link = "StorageClass" })
		vim.api.nvim_set_hl(0, "CmpItemKindInterface", { link = "Property" })
		vim.api.nvim_set_hl(0, "CmpItemKindValue", { link = "Number" })
		vim.api.nvim_set_hl(0, "CmpItemKindKeyword", { link = "Keyword" })
		vim.api.nvim_set_hl(0, "CmpItemKindSnippet", { link = "SpecialKey" })
		vim.api.nvim_set_hl(0, "CmpItemKindFile", { link = "Property" })
		vim.api.nvim_set_hl(0, "CmpItemKindFolder", { link = "Directory" })

		vim.api.nvim_set_hl(0, "CmpItemAbbrMatchDefault", { link = "Constant" })
		vim.api.nvim_set_hl(0, "CmpItemKindTextDefault", { link = "Constant" })
		vim.api.nvim_set_hl(0, "CmpItemKindMethodDefault", { link = "Function" })
		vim.api.nvim_set_hl(0, "CmpItemKindFunctionDefault", { link = "Function" })
		vim.api.nvim_set_hl(0, "CmpItemKindConstructorDefault", { link = "Keyword" })
		vim.api.nvim_set_hl(0, "CmpItemKindFieldDefault", { link = "Property" })
		vim.api.nvim_set_hl(0, "CmpItemKindVariableDefault", { link = "Variable" })
		vim.api.nvim_set_hl(0, "CmpItemKindClassDefault", { link = "StorageClass" })
		vim.api.nvim_set_hl(0, "CmpItemKindInterfaceDefault", { link = "Property" })
		vim.api.nvim_set_hl(0, "CmpItemKindValueDefault", { link = "Number" })
		vim.api.nvim_set_hl(0, "CmpItemKindKeywordDefault", { link = "Keyword" })
		vim.api.nvim_set_hl(0, "CmpItemKindSnippetDefault", { link = "SpecialKey" })
		vim.api.nvim_set_hl(0, "CmpItemKindFileDefault", { link = "Property" })
		vim.api.nvim_set_hl(0, "CmpItemKindFolderDefault", { link = "Directory" })
	end,
}
