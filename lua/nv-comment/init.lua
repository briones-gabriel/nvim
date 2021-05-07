require('nvim_comment').setup({
	marker_padding = false,
	comment_empty = false,
})

-- Keybindings
vim.api.nvim_set_keymap("n", "<Leader>/", ":CommentToggle<CR>", Keymap_options)
vim.api.nvim_set_keymap("v", "<Leader>/", ":CommentToggle<CR>", Keymap_options)
