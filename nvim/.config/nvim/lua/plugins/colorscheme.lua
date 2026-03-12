return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				variant = "moon",
				enable = {
					terminal = true,
					legacy_highlights = true,
					migrations = true,
				},
				styles = {
					transparency = true,
					italic = true,
				},
			})

			vim.cmd("colorscheme rose-pine")
		end,
	},
}
