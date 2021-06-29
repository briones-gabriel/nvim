require("nvim-treesitter.configs").setup {
    autotag = {
        enable = true,
    },
    autopairs = {
        enable = true,
    },
    highlight = {
        enable = true,
        disable = { "c", "rust" }
    },
}
