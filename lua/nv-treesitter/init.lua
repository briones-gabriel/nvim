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
    highlight = { enable = true, disable = { "c", "rust" } },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "gnu",
            node_decremental = "gnd"
        },
    },
}
