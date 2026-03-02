require("blink.cmp").setup({
	keymap = { preset = "default" },
	appearance = { nerd_font_variant = "mono" },
	completion = {
		documentation = {
			auto_show = false,
			auto_show_delay_ms = 250,
			treesitter_highlighting = true,
			window = { border = "rounded" },
		},
		menu = {
			border = "rounded",
			winhighlight = "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,CursorLine:BlinkCmpDocCursorLine,Search:None",
		},
	},
	sources = {
		default = { "lsp", "path", "buffer", "snippets" },
	},
	snippets = {
		expand = function(snippet)
			require("luasnip").lsp_expand(snippet)
		end,
	},

	fuzzy = {
		implementation = "prefer_rust",
	},
})
