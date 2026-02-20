local o = vim.opt

o.expandtab = true
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4
o.smarttab = true
o.smartindent = true
o.autoindent = true
o.breakindent = true

o.number = true
o.relativenumber = true
o.signcolumn = "yes"

o.cursorline = true

if vim.env.SSH_CLIENT ~= nil then
	o.mouse = "a"
else
	o.mouse = ""
end

o.undofile = true

o.showmode = false
o.ignorecase = true
o.smartcase = true

o.updatetime = 250

o.splitright = true
o.splitbelow = true

o.scrolloff = 10

o.hlsearch = false
o.incsearch = true

o.termguicolors = true

o.cmdheight = 0
