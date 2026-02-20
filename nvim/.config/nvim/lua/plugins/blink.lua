return {
	"saghen/blink.cmp",
	-- optional: provides snippets for the snippet source
	dependencies = { "rafamadriz/friendly-snippets" },
	build = "cargo build --release",

	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		-- See :h blink-cmp-config-keymap for defining your own keymap
		keymap = { preset = "default" },

		appearance = {
			nerd_font_variant = "mono",
		},

		completion = {
			documentation = {
				auto_show = false,
				auto_show_delay_ms = 250,
				treesitter_highlighting = true,
				window = { border = "rounded" },
			},
			menu = {
				border = "rounded",
				winhighlight = "Normal:BlinkCmpDoc,FloatBoardr:BlinkCmpDocBorder,CursorLine:BlinkCmpDocCursorLine,Search:None",
			},
		},

		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
}
