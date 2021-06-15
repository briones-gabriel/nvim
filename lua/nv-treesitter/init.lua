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
        "bash"
    },
    highlight = { enable = true, disable = { "c", "rust" }, use_languagetree = true },
}
