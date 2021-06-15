require("zen-mode").setup {
    window = {
        backdrop = 1,
        width = .70,
        height = 1,
        options = {
            signcolumn = "yes",
            number = true,
            relativenumber = true,
            cursorline = true,
            cursorcolumn = false,
            foldcolumn = "0",
            list = true,
        },
    },
    plugins = {
        gitsigns = false, -- disables git signs
        tmux = true, -- disables the tmux statusline
    },
}

---- Keybindings
vim.api.nvim_set_keymap("n", "<Leader>z", ":ZenMode<CR>", Keymap_options)
