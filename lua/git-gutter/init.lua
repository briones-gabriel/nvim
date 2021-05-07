vim.g.gitgutter_show_msg_on_hunk_jumping = false

-- Keybindings
vim.api.nvim_set_keymap("n", "]h", ":GitGutterNextHunk<CR>", Keymap_options)
vim.api.nvim_set_keymap("n", "[h", ":GitGutterPrevHunk<CR>", Keymap_options)
