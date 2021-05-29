local opt = vim.opt

-- Global
opt.showmatch = true
opt.showmode = false
opt.hidden = true
opt.errorbells = false
opt.splitbelow = true
opt.splitright = true
opt.updatetime = 100
opt.smarttab = true
opt.smartindent = true
opt.shortmess:append { c = true }
opt.fillchars = { eob = " "}
opt.clipboard = "unnamedplus"

-- Window
opt.relativenumber = true
opt.foldmethod = "indent"
opt.foldnestmax = 10
opt.foldenable = false
opt.foldlevel = 2
opt.cursorline = true
opt.number = true
opt.wrap = false
opt.scrolloff = 4
opt.colorcolumn = "120"
opt.completeopt = "menuone,noselect"
opt.hlsearch = false

-- Buffer
opt.tabstop = 4
opt.tabstop = 4
opt.shiftwidth = 4
opt.shiftwidth = 4
opt.expandtab = true

-- Leader
vim.g.mapleader = " "
vim.b.mapleader = " "

--vim.cmd("highlight EndOfBuffer guifg=bg")
