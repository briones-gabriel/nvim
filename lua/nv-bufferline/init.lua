-- Configuration
require('bufferline').setup {
  options = {
    numbers = "none",
    number_style = "", -- buffer_id at index 1, ordinal at index 2
    mappings = true,
    indicator_icon = '▎',
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
    tab_size = 18,
    diagnostics = false,
    offsets = {{ filetype = "NvimTree", text = "Files", text_align = "center" }},
    show_buffer_icons = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    show_tab_indicators = true,
    persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
    -- can also be a table containing 2 custom separators
    -- [focused and unfocused]. eg: { '|', '|' }
    --separator_style = "slant" | "thick" | "thin" | { 'any', 'any' },
    enforce_regular_tabs = true,
    always_show_bufferline = true
    --sort_by = 'extension' | 'relative_directory' | 'directory' | function(buffer_a, buffer_b)
      -- add custom logic
      --return buffer_a.modified > buffer_b.modified
    --end
  }
}

-- Keybindings
vim.api.nvim_set_keymap("n", "b]", ":BufferLineCycleNext<CR>", Keymap_options)
vim.api.nvim_set_keymap("n", "b[", ":BufferLineCycleNext<CR>", Keymap_options)
