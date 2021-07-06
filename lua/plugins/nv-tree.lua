g.nvim_tree_gitignore = 1
g.nvim_tree_quit_on_open = 1
g.nvim_tree_auto_open = 1
g.nvim_tree_auto_close = 1
g.nvim_tree_indent_markers = 1
g.nvim_tree_hide_dotfiles = 1
g.nvim_tree_git_hl = 1
g.nvim_tree_add_trailing = 1
g.nvim_tree_highlight_opened_files = 2
g.nvim_tree_lsp_diagnostics = 0
g.nvim_tree_width = 30
g.nvim_tree_follow = 1
g.nvim_tree_allow_resize = 1
g.nvim_tree_auto_ignore_ft = { "startify" }
g.nvim_tree_special_files = {
    ["application.properties"] = true,
    Makefile = true,
    ["README.md"] = true,
    ["readme.md"] = true,
}
g.nvim_tree_ignore = {
    ".git",
    "node_modules",
    "target"
}
g.nvim_tree_show_icons = {
    git = 0,
    folders = 1,
    files = 1,
    folder_arrows = 0
}
g.nvim_tree_icons = {
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
