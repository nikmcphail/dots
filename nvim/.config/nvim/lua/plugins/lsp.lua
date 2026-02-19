return {
	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"rust_analyzer",
					"zls",
					"fish",
					"vim",
					"vimdocs",
				},
			})

			local blink = require("blink.cmp")
			local capabilities = blink.get_lsp_capabilities()

			vim.lsp.config("*", {
				capabilities = capabilities,
			})
		end,
		dependencies = {
			{
				"mason-org/mason.nvim",
				opts = {
					ui = {
						icons = {
							package_installed = "✓",
							package_pending = "➜",
							package_uninstalled = "✗",
						},
						border = "rounded",
					},
				},
			},
			"neovim/nvim-lspconfig",
		},
	},
}
