local o = vim.opt
local e = vim.env
local g = vim.g

o.termguicolors = true

o.expandtab = true
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4
o.smarttab = true
o.smartindent = true
o.autoindent = true
o.breakindent = true
o.wrap = true
o.linebreak = true

o.number = true
o.relativenumber = true
o.signcolumn = "yes"

o.cursorline = true

if e.SSH_CLIENT ~= nil then
	o.mouse = "a"
else
	o.mouse = ""
end

o.undofile = true

o.showmode = false
o.cmdheight = 1

o.ignorecase = true
o.smartcase = true

o.updatetime = 250

o.splitright = true
o.splitbelow = true

o.scrolloff = 10

o.hlsearch = false
o.incsearch = true

o.errorbells = false

o.clipboard:append("unnamedplus")

g.mapleader = " "
