--[[
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)

nnoremap <C-p> :GFiles<CR>

nnoremap <Leader>m :MaximizerToggle<CR>
vnoremap <Leader>m :MaximizerToggle<CR>

-- navigate chunks of current buffer
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)

-- navigate conflicts of current buffer
nmap [c <Plug>(coc-git-prevconflict)
nmap ]c <Plug>(coc-git-nextconflict)

-- show chunk diff at current position
nmap gs <Plug>(coc-git-chunkinfo)

-- show commit contains current position
nmap gc <Plug>(coc-git-commit)
]]

local options = { noremap = true, silent = true }

-- Common keybindings
vim.api.nvim_set_keymap("n", "<Leader>w", ":w<CR>", options)
vim.api.nvim_set_keymap("n", "<Leader>q", ":q<CR>", options)

-- Buffer control
vim.api.nvim_set_keymap("n", "<Leader>+", ":vertical resize +15<CR>", options)
vim.api.nvim_set_keymap("n", "<Leader>-", ":vertical resize -15<CR>", options)
vim.api.nvim_set_keymap("n", "<Leader>=", "<C-w>=", options)

-- Buffer navigation
vim.api.nvim_set_keymap("n", "<C-h>", "<C-W><C-H>", options)
vim.api.nvim_set_keymap("n", "<C-j>", "<C-W><C-J>", options)
vim.api.nvim_set_keymap("n", "<C-k>", "<C-W><C-K>", options)
vim.api.nvim_set_keymap("n", "<C-l>", "<C-W><C-L>", options)

-- NerdTree
vim.api.nvim_set_keymap("n", "<Leader>t", ":NERDTreeFind<CR>", options)

-- Nvim commenter
vim.api.nvim_set_keymap("n", "<Leader>/", ":CommentToggle<CR>", options)
vim.api.nvim_set_keymap("v", "<Leader>/", ":CommentToggle<CR>", options)

-- Git gutter
vim.api.nvim_set_keymap("n", "]h", ":GitGutterNextHunk<CR>", options)
vim.api.nvim_set_keymap("n", "[h", ":GitGutterPrevHunk<CR>", options)

-- Telescope
vim.api.nvim_set_keymap("n", "<C-p>", ":Telescope find_files<CR>", options)
