require("mason").setup({
	ui = {
		border = "rounded",
	},
})

require("mason-lspconfig").setup({
	ensure_installed = {
		"stylua",
		"lua_ls",
		"rust_analyzer",
		"zls",
		"fish_lsp",
		"taplo",
	},
})

require("mason-tool-installer").setup({})

local augroup = vim.api.nvim_create_augroup("UserConfig", { clear = false })

local diagnostic_signs = {
	Error = " ",
	Warn = " ",
	Hint = "",
	Info = "",
}

vim.diagnostic.config({
	virtual_text = { prefix = "●", spacing = 4 },
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = diagnostic_signs.Error,
			[vim.diagnostic.severity.WARN] = diagnostic_signs.Warn,
			[vim.diagnostic.severity.INFO] = diagnostic_signs.Info,
			[vim.diagnostic.severity.HINT] = diagnostic_signs.Hint,
		},
	},
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	float = {
		border = "rounded",
		source = "always",
		header = "",
		prefix = "",
		focusable = false,
		style = "minimal",
	},
})

do
	local orig = vim.lsp.util.open_floating_preview
	function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
		opts = opts or {}
		opts.border = opts.border or "rounded"
		return orig(contents, syntax, opts, ...)
	end
end

local function lsp_on_attach(ev)
	local client = vim.lsp.get_client_by_id(ev.data.client_id)
	if not client then
		return
	end

	local bufnr = ev.buf

	local function km(mode, combo, func, desc)
		vim.keymap.set(mode, combo, func, {
			noremap = true,
			silent = true,
			buffer = bufnr,
			desc = desc,
		})
	end

	km("n", "<leader>gd", function()
		require("fzf-lua").lsp_definitions({ jump1 = true })
	end, "Goto definition (FZF)")

	km("n", "<leader>gD", vim.lsp.buf.definition, "Goto definition")

	km("n", "<leader>ca", vim.lsp.buf.code_action, "Code action")
	km("n", "<leader>rn", vim.lsp.buf.rename, "Rename symbol")

	km("n", "<leader>D", function()
		vim.diagnostic.open_float({ scope = "line" })
	end, "Line diagnostics")
	km("n", "<leader>d", function()
		vim.diagnostic.open_float({ scope = "cursor" })
	end, "Cursor diagnostics")
	km("n", "<leader>nd", function()
		vim.diagnostic.jump({ count = 1 })
	end, "Next diagnostic")

	km("n", "<leader>pd", function()
		vim.diagnostic.jump({ count = -1 })
	end, "Previous diagnostic")

	km("n", "K", vim.lsp.buf.hover, "Hover documentation")

	km("n", "<leader>fd", function()
		require("fzf-lua").lsp_definitions({ jump1 = true })
	end, "LSP definition (FZF)")
	km("n", "<leader>fr", function()
		require("fzf-lua").lsp_references()
	end, "LSP references (FZF)")
	km("n", "<leader>ft", function()
		require("fzf-lua").lsp_typedefs()
	end, "LSP type definitions (FZF)")
	km("n", "<leader>fs", function()
		require("fzf-lua").lsp_document_symbols()
	end, "LSP document symbols (FZF)")
	km("n", "<leader>fw", function()
		require("fzf-lua").lsp_workspace_symbols()
	end, "LSP workspace symbols (FZF)")
	km("n", "<leader>fi", function()
		require("fzf-lua").lsp_implementations()
	end, "LSP implementations (FZF)")

	if client:supports_method("textDocument/codeAction", bufnr) then
		km("n", "<leader>oi", function()
			vim.lsp.buf.code_action({
				context = { only = { "source.organizeImports" }, diagnostics = {} },
				apply = true,
				bufnr = bufnr,
			})
			vim.defer_fn(function()
				vim.lsp.buf.format({ bufnr = bufnr })
			end, 50)
		end, "Organize imports")
	end
end

vim.api.nvim_create_autocmd("LspAttach", { group = augroup, callback = lsp_on_attach })

vim.keymap.set("n", "<leader>q", function()
	vim.diagnostic.setloclist({ open = true })
end, { desc = "Open diagnostic list" })
vim.keymap.set("n", "<leader>dl", vim.diagnostic.open_float, { desc = "Show line diagnostics" })

vim.lsp.config["*"] = {
	capabilities = require("blink.cmp").get_lsp_capabilities(),
}

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = { globals = { "vim" } },
			telemetry = { enable = false },
		},
	},
})

vim.lsp.config("rust_analyzer", {})

vim.lsp.config("zls", {})

vim.lsp.config("taplo", {})

vim.lsp.config("fish_lsp", {})

vim.lsp.enable({
	"lua_ls",
	"rust_analyzer",
	"zls",
	"taplo",
	"fish_lsp",
})
