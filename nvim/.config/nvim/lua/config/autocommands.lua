local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- Highlight yanks
local highlight_group = augroup("YankHighlight", { clear = true })
autocmd("TextYankPost", {
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({ timeout = 170 })
	end,
	group = highlight_group,
})

-- Restore cursor position in files when reopening
autocmd("BufReadPost", {
	callback = function(args)
		local mark = vim.api.nvim_buf_get_mark(args.buf, '"')
		local line_count = vim.api.nvim_buf_line_count(args.buf)
		if mark[1] > 0 and mark[1] <= line_count then
			vim.api.nvim_win_set_cursor(0, mark)
			vim.schedule(function()
				vim.cmd("normal! zz")
			end)
		end
	end,
})

-- Open help windows in a vertical split
autocmd("FileType", {
	pattern = "help",
	command = "wincmd L",
})

-- Resize splits properly on terminal resize
autocmd("VimResized", {
	command = "wincmd =",
})

-- Disable auto commenting on new lines
local no_auto_comment_group = augroup("NoAutoComment", {})
autocmd("FileType", {
	group = no_auto_comment_group,
	callback = function()
		vim.opt_local.formatoptions:remove({ "c", "r", "o" })
	end,
})

local active_cursorline_group = augroup("ActiveCursorLine", { clear = true })
-- Cursorline active window enable
autocmd({ "WinEnter", "BufEnter" }, {
	group = active_cursorline_group,
	callback = function()
		vim.opt_local.cursorline = true
	end,
})

-- Cursorline inactive window disable
autocmd({ "WinLeave", "BufLeave" }, {
	group = active_cursorline_group,
	callback = function()
		vim.opt_local.cursorline = false
	end,
})

local lsp_reference_highlight_group = augroup("LspReferenceHighlight", { clear = true })
-- Highlight LSP symbol under cursor
autocmd("CursorMoved", {
	group = lsp_reference_highlight_group,
	callback = function()
		if vim.fn.mode() ~= "1" then
			local clients = vim.lsp.get_clients({ bufnr = 0 })
			local supports_highlight = false
			for _, client in ipairs(clients) do
				if client.server_capabilities.documentHighlightProvider then
					supports_highlight = true
					break
				end
			end

			if supports_highlight then
				vim.lsp.buf.clear_references()
				vim.lsp.buf.document_highlight()
			end
		end
	end,
})

-- ^^^^^^^^^
autocmd("CursorMovedI", {
	group = lsp_reference_highlight_group,
	callback = function()
		vim.lsp.buf.clear_references()
	end,
})
