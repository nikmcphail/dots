return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	opts = {
		ensure_installed = {
			"lua",
			"vim",
			"vimdoc",
			"rust",
			"c",
			"cpp",
			"zig",
			"fish",
		},
		auto_install = true,
		auto_update = true,
	},
}
