local p = vim.pack

vim.api.nvim_create_augroup("UserConfig", { clear = true })

local function gh(repo)
	return "https://github.com/" .. repo
end

p.add({
	{
		src = gh("nvim-treesitter/nvim-treesitter"),
		branch = "main",
		build = ":TSUpdate",
	},
	-- gh("rebelot/kanagawa.nvim"),
	-- {
	-- 	src = gh("rose-pine/neovim"),
	-- 	name = "rose-pine",
	-- },
	gh("folke/tokyonight.nvim"),
	gh("nvim-mini/mini.nvim"),
	gh("stevearc/oil.nvim"),
	gh("stevearc/conform.nvim"),
	gh("ibhagwan/fzf-lua"),
	{
		src = gh("saghen/blink.cmp"),
		version = vim.version.range("1.*"),
	},
	gh("L3MON4D3/LuaSnip"),
	gh("neovim/nvim-lspconfig"),
	gh("mason-org/mason.nvim"),
	gh("mason-org/mason-lspconfig.nvim"),
	gh("WhoIsSethDaniel/mason-tool-installer.nvim"),
	gh("folke/which-key.nvim"),
	gh("lewis6991/gitsigns.nvim"),
	gh("mplusp/pack-manager.nvim"),
	gh("folke/todo-comments.nvim"),
	gh("mluders/comfy-line-numbers.nvim"),
	gh("MeanderingProgrammer/render-markdown.nvim"),
	gh("folke/twilight.nvim"),
	gh("folke/flash.nvim"),
	gh("hedyhli/outline.nvim"),
	gh("kblin/vim-fountain"),
	gh("folke/zen-mode.nvim"),
})

local function packadd(name)
	vim.cmd("packadd " .. name)
end

local packages = {
	"nvim-treesitter",
	-- "kanagawa.nvim",
	-- "rose-pine",
	"tokyonight.nvim",
	"mini.nvim",
	"oil.nvim",
	"conform.nvim",
	"fzf-lua",
	"blink.cmp",
	"LuaSnip",
	"nvim-lspconfig",
	"mason.nvim",
	"mason-lspconfig.nvim",
	"mason-tool-installer.nvim",
	"which-key.nvim",
	"gitsigns.nvim",
	"todo-comments.nvim",
	"comfy-line-numbers.nvim",
	"render-markdown.nvim",
	"twilight.nvim",
	"flash.nvim",
	"outline.nvim",
	"vim-fountain",
	"zen-mode.nvim",
}

for _, pkg in ipairs(packages) do
	packadd(pkg)
end

local plugin_configs = {
	"treesitter",
	"colorscheme",
	"mini",
	"oil",
	"conform",
	"fzf",
	"blink",
	"lsp",
	"whichkey",
	"gitsigns",
	"flash",
	"outline",
}

for _, cfg in ipairs(plugin_configs) do
	local ok, err = pcall(require, "plugins.configs." .. cfg)
	if not ok then
		vim.notify("Failed loading plugins." .. cfg .. ": " .. err, vim.log.levels.WARN)
	end
end

-- Setup small plugins
require("todo-comments").setup({
	signs = true,
})

require("comfy-line-numbers").setup({})

require("render-markdown").setup({})

require("twilight").setup({})

require("zen-mode").setup({})
