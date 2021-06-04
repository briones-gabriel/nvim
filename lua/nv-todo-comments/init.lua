require("todo-comments").setup {
    signs = false,
    highlight = {
        before = "fg",
        keyword = "fg",
        after = "fg",
        comments_only = true,
    },
    search = {
        command = "rg",
        args = {
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
        },
        pattern = [[\b(KEYWORDS):]], -- ripgrep regex
    },
}
