local p = vim.pack

vim.api.nvim_create_augroup("UserConfig", { clear = true })

-- Add packages
p.add({
	{
		src = "https://github.com/nvim-treesitter/nvim-treesitter",
		branch = "main",
		build = ":TSUpdate",
	},
	-- "https://github.com/rebelot/kanagawa.nvim",
	{
		src = "https://github.com/rose-pine/neovim",
		name = "rose-pine",
	},
	"https://github.com/nvim-mini/mini.nvim",
	"https://github.com/stevearc/oil.nvim",
	"https://github.com/stevearc/conform.nvim",
	"https://github.com/ibhagwan/fzf-lua",
	{
		src = "https://github.com/saghen/blink.cmp",
		version = vim.version.range("1.*"),
	},
	"https://github.com/L3MON4D3/LuaSnip",
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/mason-org/mason-lspconfig.nvim",
	"https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim",
	"https://github.com/folke/which-key.nvim",
	"https://github.com/lewis6991/gitsigns.nvim",
	"https://github.com/mplusp/pack-manager.nvim",
	"https://github.com/folke/todo-comments.nvim",
	"https://github.com/mluders/comfy-line-numbers.nvim",
	"https://github.com/MeanderingProgrammer/render-markdown.nvim",
	"https://github.com/folke/twilight.nvim",
	"https://github.com/folke/flash.nvim",
})

local function packadd(name)
	vim.cmd("packadd " .. name)
end

packadd("nvim-treesitter")
-- packadd("kanagawa.nvim")
packadd("rose-pine")
packadd("mini.nvim")
packadd("oil.nvim")
packadd("conform.nvim")
packadd("fzf-lua")
packadd("blink.cmp")
packadd("LuaSnip")
packadd("nvim-lspconfig")
packadd("mason.nvim")
packadd("mason-lspconfig.nvim")
packadd("mason-tool-installer.nvim")
packadd("which-key.nvim")
packadd("gitsigns.nvim")
packadd("todo-comments.nvim")
packadd("comfy-line-numbers.nvim")
packadd("render-markdown.nvim")
packadd("twilight.nvim")
packadd("flash.nvim")

-- Require configs for packages
require("plugins.treesitter-config")
require("plugins.colorscheme-config")
require("plugins.mini-config")
require("plugins.oil-config")
require("plugins.conform-config")
require("plugins.fzf-config")
require("plugins.blink-config")
require("plugins.lsp-config")
require("plugins.whichkey-config")
require("plugins.gitsigns-config")
require("plugins.flash-config")

-- Setup small plugins
require("todo-comments").setup({
	signs = true,
})

require("comfy-line-numbers").setup({})

require("render-markdown").setup({})

require("twilight").setup({})
