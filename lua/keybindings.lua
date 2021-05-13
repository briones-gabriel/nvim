Keymap_options = { noremap = true, silent = true }

-- Common keybindings
vim.api.nvim_set_keymap("n", "<Leader>w", ":w<CR>", Keymap_options)
vim.api.nvim_set_keymap("n", "<Leader>q", ":q<CR>", Keymap_options)

-- Buffer control
vim.api.nvim_set_keymap("n", "<Leader>+", ":vertical resize +15<CR>", Keymap_options)
vim.api.nvim_set_keymap("n", "<Leader>-", ":vertical resize -15<CR>", Keymap_options)
vim.api.nvim_set_keymap("n", "<Leader>=", "<C-w>=", Keymap_options)

-- Buffer navigation
vim.api.nvim_set_keymap("n", "<C-h>", "<C-W><C-H>", Keymap_options)
vim.api.nvim_set_keymap("n", "<C-j>", "<C-W><C-J>", Keymap_options)
vim.api.nvim_set_keymap("n", "<C-k>", "<C-W><C-K>", Keymap_options)
vim.api.nvim_set_keymap("n", "<C-l>", "<C-W><C-L>", Keymap_options)

-- Git keybindings
vim.api.nvim_set_keymap("n", "<Leader>g", ":GitGutterPreviewHunk<CR>", Keymap_options)
