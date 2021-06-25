-- Configuration
require('bufferline').setup {
    options = {
        numbers = "none",
        separator_style = "thin",
        view = "multiwindow",
        modified_icon = '●',
        left_trunc_marker = '',
        right_trunc_marker = '',
        mappings = true,
        diagnostics = false,
        offsets = {{ filetype = "NvimTree", text = "", padding = 0 }},
        show_buffer_icons = true,
        show_buffer_close_icons = false,
        show_close_icon = false,
        show_tab_indicators = true,
        enforce_regular_tabs = false,
        always_show_bufferline = false
    }
}
