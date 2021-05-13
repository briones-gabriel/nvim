require("nvim-treesitter.configs").setup {
    highlight = { enable = true },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "gnu",
            node_decremental = "gnd"
        },
    },
}
