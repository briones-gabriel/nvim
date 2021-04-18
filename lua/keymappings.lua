-- Leader key
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true})
vim.g.mapleader = ' '

-- Toggle highlighting
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', { noremap = true, silent = true })

-- Save
vim.api.nvim_set_keymap('n', '<Leader>w', ':w<CR>', { silent = true })

-- Quit
vim.api.nvim_set_keymap('n', '<Leader>q', ':q<CR>', { silent = true })

-- Open NerdTree
vim.api.nvim_set_keymap('n', '<Leader>t', ':NERDTreeFind<CR>', { silent = true })

-- Comment with NerdCommenter
vim.api.nvim_set_keymap('n', '<Leader>/', ':NERDCommenterToggle<CR>', { silent = true })
vim.api.nvim_set_keymap('v', '<Leader>/', ':NERDCommenterToggle<CR>', { silent = true })

-- Window movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { silent = true })

-- Indentation
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })

-- Move selected line in visual mode
-- TODO: Look for a way of implementing this feature
