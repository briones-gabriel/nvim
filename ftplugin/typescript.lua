require("lspconfig").tsserver.setup {
  cmd = {
    DATA_PATH .. "/lspinstall/typescript/node_modules/.bin/typescript-language-server",
    "--stdio",
  },
	filetypes = { "typescript" },
  on_attach = require("plugins.lsp.on_attatch"),
  -- This makes sure tsserver is not used for formatting (I prefer prettier)
  root_dir = require("lspconfig/util").root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
  --settings = { documentFormatting = false },
}
