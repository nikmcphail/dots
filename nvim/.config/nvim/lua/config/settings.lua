vim.opt.termguicolors = true

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.breakindent = true
vim.opt.wrap = true
vim.opt.linebreak = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"

vim.opt.cursorline = true

if vim.env.SSH_CLIENT ~= nil then
	vim.opt.mouse = "a"
else
	vim.opt.mouse = ""
end

vim.opt.undofile = true

vim.opt.showmode = false
vim.opt.cmdheight = 0

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.updatetime = 10

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.scrolloff = 10

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.errorbells = false

vim.opt.clipboard:append("unnamedplus")
