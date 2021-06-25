-- General
g.showmatch = true
g.hidden = true
g.splitbelow = true
g.splitright = true
g.smartindent = true
g.smarttab = true
g.showmode = false
g.errorbells = false
g.updatetime = 100
g.shortmess:append { c = true }
g.clipboard = "unnamedplus"
g.fillchars = { eob = " "}
vim.g.indentLine_char = "▏"

-- Window
g.relativenumber = true
g.cursorline = true
g.number = true
g.wrap = false
g.foldenable = false
g.hlsearch = false
g.scrolloff = 4
g.foldlevel = 2
g.foldnestmax = 10
g.foldmethod = "indent"
g.colorcolumn = "120"
g.completeopt = "menuone,noselect"

-- Buffer
g.expandtab = true
g.tabstop = 4
g.tabstop = 4
g.shiftwidth = 4
g.shiftwidth = 4

-- Leader
vim.g.mapleader = " "
vim.b.mapleader = " "

cmd("colorscheme base16-onedark")
