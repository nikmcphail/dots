return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			vim.g.rosepine_transparent = true

			local function reload_theme()
				require("rose-pine").setup({
					variant = "moon",
					enable = {
						terminal = true,
						legacy_highlights = true,
						migrations = true,
					},
					styles = {
						transparency = vim.g.rosepine_transparent,
						italic = true,
					},
				})

				vim.cmd.colorscheme("rose-pine")
			end

			reload_theme()

			vim.keymap.set("n", "<leader>O", function()
				vim.g.rosepine_transparent = not vim.g.rosepine_transparent
				reload_theme()
			end, { desc = "Toggle opacity" })
		end,
	},
}
