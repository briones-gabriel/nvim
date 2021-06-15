-- Configuration
require('bufferline').setup {
    options = {
        numbers = "none",
        mappings = true,
        modified_icon = '●',
        left_trunc_marker = '',
        right_trunc_marker = '',
        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 20,
        diagnostics = false,
        offsets = {{filetype = "NvimTree", text = "", padding = 1}},
        show_buffer_icons = true,
        show_buffer_close_icons = false,
        show_close_icon = false,
        separator_style = "thin",
        show_tab_indicators = true,
        view = "multiwindow",
        enforce_regular_tabs = true,
        always_show_bufferline = false
    }
}

-- Highlighting
vim.cmd("hi BufferLineIndicatorSelected guifg=white")
vim.cmd("hi BufferLineSeparator guifg=bg")

-- Keybindings
local map = vim.api.nvim_set_keymap
map("n", "<TAB>", ":w<CR>:BufferLineCycleNext<CR>", Keymap_options)
map("n", "<S-TAB>", ":w<CR>:BufferLineCyclePrev<CR>", Keymap_options)
map("n", "<S-x>", ":bd<CR>", Keymap_options)
map("n", "<C-]>", ":w<CR>:BufferLineMoveNext<CR>", Keymap_options)
map("n", "<C-[>", ":w<CR>:BufferLineMovePrev<CR>", Keymap_options)
