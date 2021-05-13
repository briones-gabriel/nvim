vim.g.gitgutter_show_msg_on_hunk_jumping = false

-- Keybindings
vim.api.nvim_set_keymap("n", "<Leader>nh", ":GitGutterNextHunk<CR>", Keymap_options)
vim.api.nvim_set_keymap("n", "<Leader>ph", ":GitGutterPrevHunk<CR>", Keymap_options)
vim.api.nvim_set_keymap("n", "<Leader>hp", ":GitGutterPreviewHunk<CR>", Keymap_options)
