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
g.fillchars = { eob = " " }

-- Window
g.relativenumber = true
g.numberwidth = 2
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

-- Disable builtin vim plugins
vimg.loaded_gzip = 0
vimg.loaded_tar = 0
vimg.loaded_tarPlugin = 0
vimg.loaded_zipPlugin = 0
vimg.loaded_2html_plugin = 0
vimg.loaded_netrw = 0
vimg.loaded_netrwPlugin = 0
vimg.loaded_matchit = 0
vimg.loaded_matchparen = 0
vimg.loaded_spec = 0

-- Tabs
set_tabs(2)

-- Leader
vim.g.mapleader = " "
vim.b.mapleader = " "

-- Colorscheme
cmd("colorscheme base16-onedark")
