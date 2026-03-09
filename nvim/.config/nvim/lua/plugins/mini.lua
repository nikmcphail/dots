return {
	"echasnovski/mini.nvim",
	event = "VeryLazy",
	config = function()
		require("mini.icons").setup({})

		require("mini.statusline").setup({
			use_icons = true,
		})

		require("mini.pairs").setup({
			mappings = {
				[")"] = { action = "close", pair = "()", neigh_pattern = "[^\\]." },
				["]"] = { action = "close", pair = "[]", neigh_pattern = "[^\\]." },
				["}"] = { action = "close", pair = "{}", neigh_pattern = "[^\\]." },
				["["] = {
					action = "open",
					pair = "[]",
					neigh_pattern = ".[%s%z%)}%]]",
					register = { cr = false },
				},
				["{"] = {
					action = "open",
					pair = "{}",
					neigh_pattern = ".[%s%z%)}%]]",
					register = { cr = false },
				},
				["("] = {
					action = "open",
					pair = "()",
					neigh_pattern = ".[%s%z%)]",
					register = { cr = false },
				},
				['"'] = {
					action = "closeopen",
					pair = '""',
					neigh_pattern = "[^%w\\][^%w]",
					register = { cr = false },
				},
				["'"] = {
					action = "closeopen",
					pair = "''",
					neigh_pattern = "[^%w\\][^%w]",
					register = { cr = false },
				},
				["`"] = {
					action = "closeopen",
					pair = "``",
					neigh_pattern = "[^%w\\][^%w]",
					register = { cr = false },
				},
			},
		})

		require("mini.ai").setup({})

		require("mini.indentscope").setup({
			mappings = {
				goto_top = "[i",
				goto_bottom = "]i",
			},
		})

		require("mini.tabline").setup({})

		require("mini.notify").setup({})

		require("mini.move").setup({})

		require("mini.surround").setup({
			mappings = {
				add = "sa",
				delete = "sd",
				find = "sf",
				find_left = "sF",
				highlight = "sh",
				replace = "sr",

				suffix_last = "l",
				suffix_next = "n",
			},
		})
	end,
}
