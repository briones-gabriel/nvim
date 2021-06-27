require("nvim-treesitter.configs").setup {
    ensure_installed = {
        "html",
        "css",
        "javascript",
        "typescript",
        "java",
        "vue",
        "yaml",
        "toml",
        "lua",
        "bash"
    },
    autotag = {
        enable = true,
    },
    highlight = {
        enable = true,
        disable = { "c", "rust" }
    },
}
