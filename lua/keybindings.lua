-- Common keybindings
nmap("<Leader>w", ":w<CR>")
nmap("<Leader>q", ":q<CR>")

-- Buffer control
nmap("<Leader>+", ":vertical resize +15<CR>")
nmap("<Leader>-", ":vertical resize -15<CR>")
nmap("<Leader>=", "<C-w>=")
vmap("J", ":m '>+1<CR>gv=gv")
vmap("K", ":m '<-2<CR>gv=gv")
nmap("<Leader>t", ":NvimTreeToggle<CR>")

-- Buffer navigation
nmap("<S-h>", "<C-W><C-H>")
nmap("<S-j>", "<C-W><C-J>")
nmap("<S-k>", "<C-W><C-K>")
nmap("<S-l>", "<C-W><C-L>")

-- BufferLine
nmap("<C-l>", ":BufferLineCycleNext<CR>")
nmap("<C-h>", ":BufferLineCyclePrev<CR>")
nmap("<C-w>", ":bd<CR>")
nmap("<C-]>", ":BufferLineMoveNext<CR>")
nmap("<C-[>", ":BufferLineMovePrev<CR>")

-- Zenmode
nmap("<Leader>z", ":ZenMode<CR>")

-- Commenting
nmap("<Leader>/", ":CommentToggle<CR>")
vmap("<Leader>/", ":CommentToggle<CR>")

-- Completion
imap("<Tab>", "v:lua.tab_complete()")
smap("<Tab>", "v:lua.tab_complete()")
imap("<S-Tab>", "v:lua.s_tab_complete()")
smap("<S-Tab>", "v:lua.s_tab_complete()")

-- Telescope
nmap("<Leader>ff", [[<Cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({ previewer = false }))<CR>]])

-- Formatting
nmap("<Leader>fm", [[<Cmd> Neoformat<CR>]])

-- Git
nmap("<Leader>gs", ":G<CR>")
nmap("<Leader>ga", ":Git add .<CR>")
nmap("<Leader>gc", ":G commit<CR>")
nmap("<Leader>gpl", ":G pull<CR>")
nmap("<Leader>gps", ":G push<CR>")
nmap("<Leader>gh", ":diffget //2<CR>")
nmap("<Leader>gl", ":diffget //3<CR>")
