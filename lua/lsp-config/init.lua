-- Configuration
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = {
        'documentation',
        'detail',
        'additionalTextEdits',
    }
}

require('vim.lsp.protocol').CompletionItemKind = {
      '  Text';          -- = 1
      '  Function';      -- = 2;
      '  Method';        -- = 3;
      '  Constructor';   -- = 4;
      '  Field';         -- = 5;
      '  Variable';      -- = 6;
      '  Class';         -- = 7;
      '  Interface';     -- = 8;
      '  Module';        -- = 9;
      '  Property';      -- = 10;
      '  Unit';          -- = 11;
      '  Value';         -- = 12;
      '  Enum';          -- = 13;
      '  Keyword';       -- = 14;
      '  Snippet';       -- = 15;
      '  Color';         -- = 16;
      '  File';          -- = 17;
      '  Reference';     -- = 18;
      '  Folder';        -- = 19;
      '  EnumMember';    -- = 20;
      '  Constant';      -- = 21;
      '  Struct';        -- = 22;
      '  Event';         -- = 23;
      '  Operator';      -- = 24;
      '  TypeParameter'; -- = 25;
}

-- Keybindings
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", Keymap_options)
vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", Keymap_options)
vim.api.nvim_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", Keymap_options)
vim.api.nvim_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", Keymap_options)
vim.api.nvim_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", Keymap_options)

