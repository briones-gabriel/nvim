-- Configuration
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true;

local function setup_servers()
    require'lspinstall'.setup()
    local servers = require'lspinstall'.installed_servers()
    for _, server in pairs(servers) do
        require'lspconfig'[server].setup{ capabilities = capabilities }
    end
end

setup_servers()

require'lspinstall'.post_install_hook = function ()
    setup_servers()
    vim.cmd("bufdo e")
end

-- Keybindings
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", Keymap_options)
vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", Keymap_options)
vim.api.nvim_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", Keymap_options)
vim.api.nvim_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", Keymap_options)
vim.api.nvim_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", Keymap_options)
vim.api.nvim_set_keymap("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", Keymap_options)
vim.api.nvim_set_keymap("n", "<M-CR>", "<cmd>lua vim.lsp.buf.code_action()<CR>", Keymap_options)
vim.api.nvim_set_keymap("n", "<Leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", Keymap_options)
vim.api.nvim_set_keymap("n", "<Leader>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", Keymap_options)
vim.api.nvim_set_keymap("n", "<Leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", Keymap_options)
vim.api.nvim_set_keymap("v", "<Leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", Keymap_options)
vim.api.nvim_set_keymap("n", "<Leader>ll", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", Keymap_options)
