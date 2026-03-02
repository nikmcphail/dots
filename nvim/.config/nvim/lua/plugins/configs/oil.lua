local oil = require("oil")

oil.setup({
	default_file_explorer = true,
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
