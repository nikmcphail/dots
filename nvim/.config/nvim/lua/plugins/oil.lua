return {
	"stevearc/oil.nvim",
	--@module 'oil'
	--@type oil.SetupOpts
	dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	lazy = false,
	config = function()
		require("oil").setup({
			default_file_exporer = true,
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
		})

		vim.keymap.set("n", "-", "<cmd>Oil<CR>", { desc = "Open parent directory" })
		vim.keymap.set("n", "<leader>-", "<cmd>Oil --float<CR>", { desc = "Open parent directory (floating)" })
	end,
}
