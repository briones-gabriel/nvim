local options = { noremap = true, silent = true }

-- Common keybindings
vim.api.nvim_set_keymap("n", "<Leader>w", ":w<CR>", options)
vim.api.nvim_set_keymap("n", "<Leader>q", ":q<CR>", options)

-- Buffer control
vim.api.nvim_set_keymap("n", "<Leader>+", ":vertical resize +15<CR>", options)
vim.api.nvim_set_keymap("n", "<Leader>-", ":vertical resize -15<CR>", options)
vim.api.nvim_set_keymap("n", "<Leader>=", "<C-w>=", options)

-- Buffer navigation
vim.api.nvim_set_keymap("n", "<C-h>", "<C-W><C-H>", options)
vim.api.nvim_set_keymap("n", "<C-j>", "<C-W><C-J>", options)
vim.api.nvim_set_keymap("n", "<C-k>", "<C-W><C-K>", options)
vim.api.nvim_set_keymap("n", "<C-l>", "<C-W><C-L>", options)

-- Nvim commenter
vim.api.nvim_set_keymap("n", "<Leader>/", ":CommentToggle<CR>", options)
vim.api.nvim_set_keymap("v", "<Leader>/", ":CommentToggle<CR>", options)

-- Git gutter
vim.api.nvim_set_keymap("n", "]h", ":GitGutterNextHunk<CR>", options)
vim.api.nvim_set_keymap("n", "[h", ":GitGutterPrevHunk<CR>", options)

-- Telescope
vim.api.nvim_set_keymap("n", "<C-p>", ":Telescope find_files<CR>", options)
vim.api.nvim_set_keymap("n", "<C-f>", ":Telescope file_browser<CR>", options)

-- Vim Maximizer
vim.api.nvim_set_keymap("n", "<Leader>m", ":MaximizerToggle<CR>", options)

-- Nvim tree
vim.api.nvim_set_keymap("n", "<Leader>t", ":NvimTreeToggle<CR>", options)
vim.api.nvim_set_keymap("n", "<Leader>r", ":NvimTreeRefresh<CR>", options)

local tree_cb = require('nvim-tree.config').nvim_tree_callback
vim.g.nvim_tree_bindings = {
    ["<CR>"]    = tree_cb("edit"),
    ["o"]       = tree_cb("edit"),
    ["<C-]>"]   = tree_cb("cd"),
    ["v"]       = tree_cb("vsplit"),
    ["h"]       = tree_cb("split"),
    ["t"]       = tree_cb("tabnew"),
    ["<"]       = tree_cb("prev_sibling"),
    [">"]       = tree_cb("next_sibling"),
    ["x"]       = tree_cb("close_node"),
    ["<Tab>"]   = tree_cb("preview"),
    ["I"]       = tree_cb("toggle_ignored"),
    ["H"]       = tree_cb("toggle_dotfiles"),
    ["R"]       = tree_cb("refresh"),
    ["a"]       = tree_cb("create"),
    ["d"]       = tree_cb("remove"),
    ["r"]       = tree_cb("rename"),
    ["<C-r>"]   = tree_cb("full_rename"),
    ["c"]       = tree_cb("copy"),
    ["p"]       = tree_cb("paste"),
    ["[c"]      = tree_cb("prev_git_item"),
    ["]c"]      = tree_cb("next_git_item"),
    ["-"]       = tree_cb("dir_up"),
    ["q"]       = tree_cb("close"),
}
