require("which-key").setup({
	opts = {
		win = {
			no_overlap = true,
		},
		delay = 1000,
		plugins = {
			presets = {
				actions = true,
			},
		},
	},
})

vim.keymap.set("n", "<leader>?", function()
	require("which-key").show({ global = false })
end, { desc = "Buffer local keymaps (which-key)" })
