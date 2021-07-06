--- ESSENTIAL ---
map("n",    "<Leader>w",    ":w<CR>")
map("n",    "<Leader>q",    ":q<CR>")
map("n",    "<Leader>st2",  ":lua set_tabs(2)<CR>")
map("n",    "<Leader>st4",  ":lua set_tabs(4)<CR>")
map("n",    "<Leader>/",    ":CommentToggle<CR>")
cmap("v",    "<Leader>/",    ":CommentToggle<CR>", { noremap = true, silent = true })

--- BUFFER CONTROL ---
map("n",    "<Leader>+",    ":vertical resize +15<CR>")
map("n",    "<Leader>-",    ":vertical resize -15<CR>")
map("n",    "<Leader>=",    "<C-w>=")
map("n",    "<Leader>t",    ":NvimTreeToggle<CR>")
map("v",    "J",            ":m '>+1<CR>gv=gv")
map("v",    "K",            ":m '<-2<CR>gv=gv")

-- BUFFER NAVIGATION ---
map("n",    "<S-h>",        "<C-W><C-H>")
map("n",    "<S-j>",        "<C-W><C-J>")
map("n",    "<S-k>",        "<C-W><C-K>")
map("n",    "<S-l>",        "<C-W><C-L>")

-- BUFFER LINE NAVIGATION ---
map("n",    "<C-l>",        ":BufferLineCycleNext<CR>")
map("n",    "<C-h>",        ":BufferLineCyclePrev<CR>")
map("n",    "<C-w>",        ":bd<CR>")
map("n",    "<C-]>",        ":BufferLineMoveNext<CR>")
map("n",    "<C-[>",        ":BufferLineMovePrev<CR>")

-- TELESCOPE ---
map("n",    "<Leader>f",   ":lua require('telescope.builtin').find_files({ previewer = false })<CR>")

-- GIT ---
map("n",    "<Leader>gs",   ":G<CR>")
map("n",    "<Leader>gpl",  ":G pull<CR>")
map("n",    "<Leader>gps",  ":G push<CR>")
map("n",    "<Leader>gc",   ":G commit<CR>")
map("n",    "<Leader>ga",   ":Git add .<CR>")
map("n",    "<Leader>gh",   ":diffget //2<CR>")
map("n",    "<Leader>gl",   ":diffget //3<CR>")

--- COMPLETION ---
cmap("i",    "<CR>",         "compe#confirm('<CR>')", {expr = true})
cmap("i",    "<C-Leader>",   "compe#complete()", {expr = true})
cmap("i",    "<C-e>",        "compe#close(\'<c-e>\')", {expr = true})
cmap("i",   "<Tab>",        "v:lua.tab_complete()",      {expr = true})
cmap("s",   "<Tab>",        "v:lua.tab_complete()",      {expr = true})
cmap("i",   "<S-Tab>",      "v:lua.s_tab_complete()",    {expr = true})
cmap("s",   "<S-Tab>",      "v:lua.s_tab_complete()",    {expr = true})

--- LSP SAGA ---
map("n",    "<C-j>",        ":Lspsaga diagnostic_jump_next<CR>")
map("n",    "K",            ":Lspsaga hover_doc<CR>")
map("n",    "<C-k>",        ":Lspsaga signature_help<CR>")
map("n",    "gh",           ":Lspsaga lsp_finder<CR>")
