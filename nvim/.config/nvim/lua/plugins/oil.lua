return {
	{
		"stevearc/oil.nvim",
		lazy = false,
		opts = {
			default_file_explorer = true,
			columns = {
				"permissions",
				"size",
				"icon",
			},
			delete_to_trash = true,
			view_options = {
				show_hidden = true,
			},
			keymaps = {
				["<C-c>"] = false,
				["q"] = "actions.close",
			},
			float = {
				border = "rounded",
			},
			confirmation = {
				border = "rounded",
			},
		},
		keys = {
			{ "-", "<cmd>Oil<CR>", desc = "Open parent directory" },
			{ "<leader>-", "<cmd>Oil --float<CR>", desc = "Open parent directory (floating)" },
		},
	},
}
