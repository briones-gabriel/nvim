require("todo-comments").setup {
    signs = false,
    -- highlighting of the line containing the todo comment
    -- * before: highlights before the keyword (typically comment characters)
    -- * keyword: highlights of the keyword
    -- * after: highlights after the keyword (todo text)
    highlight = {
        before = "fg", -- "fg" or "bg" or empty
        keyword = "fg", -- "fg", "bg", "wide" or empty. (wide is the same as bg, but will also highlight surrounding characters)
        after = "fg", -- "fg" or "bg" or empty
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
        -- regex that will be used to match keywords.
        -- don't replace the (KEYWORDS) placeholder
        pattern = [[\b(KEYWORDS):]], -- ripgrep regex
        -- pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. You'll likely get false positives
    },
}
