-- Configuration
require('bufferline').setup {
    options = {
        separator_style = "thin",
        view = "multiwindow",
        numbers = "none",
        sort_by = "directory",
        modified_icon = '●',
        left_trunc_marker = '',
        right_trunc_marker = '',
        mappings = true,
        diagnostics = false,
        show_buffer_icons = false,
        show_buffer_close_icons = false,
        show_close_icon = false,
        show_tab_indicators = true,
        enforce_regular_tabs = false,
        always_show_bufferline = false,
        offsets = {{
            filetype = "NvimTree",
            text = "",
            padding = 0
        }},
    }
}
