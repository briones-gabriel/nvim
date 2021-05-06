-- Global
vim.g.showmatch = true
vim.g.hlsearch = false
vim.g.showmode = false
vim.g.hidden = true
vim.g.errorbells = false
vim.g.splitbelow = true
vim.g.splitright = true
vim.g.updatetime = 100

-- Window
vim.wo.relativenumber = true
vim.wo.cursorline = true
vim.wo.number = true
vim.wo.wrap = false
vim.wo.scrolloff = 4
vim.wo.colorcolumn = "120"

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
vim.cmd("colorscheme gruvbox")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set termguicolors")
