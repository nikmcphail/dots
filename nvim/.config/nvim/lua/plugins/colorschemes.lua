return {
	-- {
	-- 	"rose-pine/neovim",
	-- 	name = "rose-pine",
	-- 	opts = {
	-- 		styles = {
	-- 			bold = true,
	-- 			italic = true,
	-- 			transparency = true,
	-- 		},
	-- 	},
	-- },
	-- {
	-- 	"ribru17/bamboo.nvim",
	-- 	opts = {
	-- 		transparent = true,
	-- 	},
	-- },
	{
		"rebelot/kanagawa.nvim",
		opts = {
			transparent = true,
			colors = {
				theme = {
					all = {
						ui = {
							bg_gutter = "none",
						},
					},
				},
			},
			overrides = function()
				return {
					NormalFloat = { bg = "none" },
					FloatBorder = { bg = "none" },
					FloatTitle = { bg = "none" },
				}
			end,
		},
	},
}
