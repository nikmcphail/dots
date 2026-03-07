return {
	"folke/tokyonight.nvim",
	lazy = false,
	config = function()
		local tokyonight = require("tokyonight")
		tokyonight.setup({
			transparent = true,
			styles = {
				floats = "transparent",
			},
		})

		vim.cmd.colorscheme("tokyonight")
	end,
}
