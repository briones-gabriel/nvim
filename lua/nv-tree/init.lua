-- Options
local opt = vim.g

opt.nvim_tree_gitignore = 1
opt.nvim_tree_quit_on_open = 1
opt.nvim_tree_auto_open = 0
opt.nvim_tree_auto_close = 0
opt.nvim_tree_indent_markers = 1
opt.nvim_tree_hide_dotfiles = 1
opt.nvim_tree_git_hl = 1
opt.nvim_tree_highlight_opened_files = 1
opt.nvim_tree_lsp_diagnostics = 1
opt.nvim_tree_width = 30
opt.nvim_tree_follow = 1
opt.nvim_tree_allow_resize = 1
opt.nvim_tree_follow = 1
opt.nvim_tree_icons = { default = "" }
opt.nvim_tree_special_files = { "README.md", "application.properties" }
opt.nvim_tree_ignore = { ".git", "node_modules", "target" }
opt.nvim_tree_show_icons = { git = 0, folders = 1, files = 1 }

-- Keybindings
local tree_cb = require("nvim-tree.config").nvim_tree_callback
opt.nvim_tree_bindings = {
    ["<CR>"]    = tree_cb("edit"),
    ["o"]       = tree_cb("edit"),
    ["<Leader>cd"]   = tree_cb("cd"),
    ["v"]       = tree_cb("vsplit"),
    ["h"]       = tree_cb("split"),
    ["t"]       = tree_cb("tabnew"),
    ["<"]       = tree_cb("prev_sibling"),
    [">"]       = tree_cb("next_sibling"),
    ["x"]       = tree_cb("close_node"),
    ["<Tab>"]   = tree_cb("preview"),
    ["I"]       = tree_cb("toggle_ignored"),
    ["H"]       = tree_cb("toggle_dotfiles"),
    ["R"]       = tree_cb("refresh"),
    ["a"]       = tree_cb("create"),
    ["d"]       = tree_cb("remove"),
    ["r"]       = tree_cb("rename"),
    ["<C-r>"]   = tree_cb("full_rename"),
    ["c"]       = tree_cb("copy"),
    ["p"]       = tree_cb("paste"),
    ["[c"]      = tree_cb("prev_git_item"),
    ["]c"]      = tree_cb("next_git_item"),
    ["-"]       = tree_cb("dir_up"),
    ["q"]       = tree_cb("close"),
}
