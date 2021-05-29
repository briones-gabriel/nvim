-- Global
vim.g.showmatch = true
vim.g.showmode = false
vim.g.hidden = true
vim.g.errorbells = false
vim.g.splitbelow = true
vim.g.splitright = true
vim.g.updatetime = 100
vim.g.smarttab = true
vim.g.smartindent = true

-- Window
vim.wo.relativenumber = true
vim.wo.foldmethod = "indent"
vim.wo.foldnestmax = 10
vim.wo.foldenable = false
vim.wo.foldlevel = 2
vim.wo.cursorline = true
vim.wo.number = true
vim.wo.wrap = false
vim.wo.scrolloff = 4
vim.wo.colorcolumn = "120"
vim.o.completeopt = "menuone,noselect"
vim.o.hlsearch = false

-- Buffer
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
vim.o.expandtab = true

-- Leader
vim.g.mapleader = " "
vim.b.mapleader = " "

-- Don't know how to
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set shortmess+=c")
vim.cmd("highlight EndOfBuffer guifg=bg")
