vimg.nvim_tree_gitignore = 1
vimg.nvim_tree_quit_on_open = 1
vimg.nvim_tree_auto_open = 1
vimg.nvim_tree_auto_close = 1
vimg.nvim_tree_indent_markers = 1
vimg.nvim_tree_hide_dotfiles = 1
vimg.nvim_tree_git_hl = 1
vimg.nvim_tree_add_trailing = 1
vimg.nvim_tree_highlight_opened_files = 2
vimg.nvim_tree_lsp_diagnostics = 0
vimg.nvim_tree_width = 30
vimg.nvim_tree_follow = 1
vimg.nvim_tree_allow_resize = 1
vimg.nvim_tree_auto_ignore_ft = { "startify" }
vimg.nvim_tree_special_files = {
    ["application.properties"] = true,
    Makefile = true,
    ["README.md"] = true,
    ["readme.md"] = true,
}
vimg.nvim_tree_ignore = {
    ".git",
    "node_modules",
    "target"
}
vimg.nvim_tree_show_icons = {
    git = 0,
    folders = 1,
    files = 1,
    folder_arrows = 0
}
vimg.nvim_tree_icons = {
    default = "",
    symlink = "",
    git = {
        unstaged = "",
        staged = "",
        unmerged = "",
        renamed = "",
        untracked = "",
        deleted = "",
        ignored = ""
    },
    folder = {
        --arrow_open = "",
        --arrow_closed = "",
        --default = "",
        --open = "",
        --empty = "",
        --empty_open = "",
        --symlink = "",
        --symlink_open = "",
        default = "",
        open = "",
        empty = "",
        empty_open = "",
        symlink = "",
        symlink_open = "",
    },
    lsp = {
        hint = "",
        info = "",
        warning = "",
        error = ""
    }
}

-- Keybindings
local tree_cb = require("nvim-tree.config").nvim_tree_callback
vimg.nvim_tree_bindings = {
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
