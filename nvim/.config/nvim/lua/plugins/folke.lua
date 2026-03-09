return {
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		opts = {},
		keys = {
			{
				"s",
				function()
					require("flash").jump()
				end,
				mode = { "n", "x", "o" },
				desc = "Flash",
			},
			{
				"S",
				function()
					require("flash").treesitter()
				end,
				mode = { "n", "x", "o" },
				desc = "Flash Treesitter",
			},
			{
				"r",
				function()
					require("flash").remote()
				end,
				mode = "o",
				desc = "Remote Flash",
			},
			{
				"R",
				function()
					require("flash").treesitter_search()
				end,
				mode = { "o", "x" },
				desc = "Treesitter Search",
			},
		},
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			win = {
				no_overlap = true,
			},
			delay = 500,
			plugins = {
				presets = {
					actions = true,
				},
			},
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				mode = "n",
				desc = "Buffer local keymaps (which-key)",
			},
		},
	},
	{
		"folke/todo-comments.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		opts = {
			signs = true,
		},
	},
	{
		"folke/twilight.nvim",
		opts = {},
		keys = {
			{ "<leader>T", "<cmd>Twilight<CR>", desc = "Toggle Twilight" },
		},
	},
	{
		"folke/zen-mode.nvim",
		opts = {},
		keys = {
			{ "<leader>Z", "<cmd>ZenMode<CR>", desc = "Toggle Zen" },
		},
	},
}
