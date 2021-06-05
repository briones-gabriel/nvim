-- Configuration
require('bufferline').setup {
  options = {
    numbers = "none",
    number_style = "",
    mappings = true,
    indicator_icon = '▎',
    modified_icon = '●',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 18,
    max_prefix_length = 15,
    tab_size = 18,
    diagnostics = false,
    offsets = {{ filetype = "NvimTree", text = "Files", text_align = "center" }},
    show_buffer_icons = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    show_tab_indicators = true,
    enforce_regular_tabs = true,
    always_show_bufferline = false
  }
}

-- Highlighting
vim.cmd("hi BufferLineIndicatorSelected guifg=white")
vim.cmd("hi BufferLineSeparator guifg=bg")

-- Keybindings
vim.api.nvim_set_keymap("n", "<Leader>b]", ":w<CR>:BufferLineCycleNext<CR>", Keymap_options)
vim.api.nvim_set_keymap("n", "<Leader>b[", ":w<CR>:BufferLineCyclePrev<CR>", Keymap_options)
vim.api.nvim_set_keymap("n", "<C-]>", ":w<CR>:BufferLineMoveNext<CR>", Keymap_options)
vim.api.nvim_set_keymap("n", "<C-[>", ":w<CR>:BufferLineMovePrev<CR>", Keymap_options)
vim.api.nvim_set_keymap("n", "<Leader>bd", ":bd<CR>", Keymap_options)
