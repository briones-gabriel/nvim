-- Common keybindings
nmap("<Leader>w", ":w<CR>")
nmap("<Leader>q", ":q<CR>")
nmap("<Leader>st", ":lua set_tabs()")

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

-- Git
nmap("<Leader>gs", ":G<CR>")
nmap("<Leader>ga", ":Git add .<CR>")
nmap("<Leader>gc", ":G commit<CR>")
nmap("<Leader>gpl", ":G pull<CR>")
nmap("<Leader>gps", ":G push<CR>")
nmap("<Leader>gh", ":diffget //2<CR>")
nmap("<Leader>gl", ":diffget //3<CR>")
nmap("<leader>hs", "<cmd>lua require'gitsigns'.stage_hunk()<CR>")
nmap("<leader>bs", "<cmd>lua require'gitsigns'.stage_buffer()<CR>")
nmap("<leader>hu", "<cmd>lua require'gitsigns'.undo_stage_hunk()<CR>")
nmap("<leader>hr", "<cmd>lua require'gitsigns'.reset_hunk()<CR>")
nmap("<leader>br", "<cmd>lua require'gitsigns'.reset_buffer()<CR>")
nmap("<leader>hp", "<cmd>lua require'gitsigns'.preview_hunk()<CR>")
nmap("<leader>hb", "<cmd>lua require'gitsigns'.blame_line(true)<CR>")
nmap("<Leader>sh", ":<C-U>lua require'gitsigns'.select_hunk()<CR>")

-- LSP
nmap("gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>")
nmap("gd", "<Cmd>lua vim.lsp.buf.definition()<CR>")
nmap("K", "<Cmd>lua vim.lsp.buf.hover()<CR>")
nmap("gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
nmap("<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
nmap("<space>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
nmap("<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
nmap("gr", "<cmd>lua vim.lsp.buf.references()<CR>")
nmap("<space>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>")
nmap("[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>")
nmap("]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>")
nmap("<space>ll", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>")
nmap("<M-CR>", "<cmd>lua vim.lsp.buf.code_action()<CR>")
