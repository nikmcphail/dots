local function override_cursorline()
	vim.api.nvim_set_hl(0, "CursorLine", {
		bg = "{{colors.background.default.hex | lighten: 10}}",
		underline = false,
	})
end

vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = override_cursorline,
})

override_cursorline()
