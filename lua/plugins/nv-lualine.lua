require("lualine").setup {
    options = {
        theme = "auto",
    },
    sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = { "filename" },
        lualine_x = { "diff", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { }
    },
    extensions = { "nvim-tree" }
}
