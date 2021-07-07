return function ()
  --- ERROR SYMBOL ---
  vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
      virtual_text = {
        prefix = "",
        spacing = 0,
      },
      signs = true,
      underline = true,
    }
  )

  --- COMPLETION SYMBOL ---
  require("vim.lsp.protocol").CompletionItemKind = {
    "   (Text) ",
    "   (Method)",
    "   (Function)",
    "   (Constructor)",
    " ﴲ  (Field)",
    "[] (Variable)",
    "   (Class)",
    " ﰮ  (Interface)",
    "   (Module)",
    " 襁 (Property)",
    "   (Unit)",
    "   (Value)",
    " 練 (Enum)",
    "   (Keyword)",
    "   (Snippet)",
    "   (Color)",
    "   (File)",
    "   (Reference)",
    "   (Folder)",
    "   (EnumMember)",
    " ﲀ  (Constant)",
    " ﳤ  (Struct)",
    "   (Event)",
    "   (Operator)",
    "   (TypeParameter)"
  }

  --- SIGN DEFINITION ---
  sdef(
    "LspDiagnosticsSignError",
    {
      text = "",
      numhl = "LspDiagnosticsDefaultError"
    }
  )

  sdef(
    "LspDiagnosticsSignWarning",
    {
      text = "",
      numhl = "LspDiagnosticsDefaultWarning"
    }
  )

  sdef(
    "LspDiagnosticsSignInformation",
    {
      text = "",
      numhl = "LspDiagnosticsDefaultInformation"
    }
  )

  sdef(
    "LspDiagnosticsSignHint",
    {
      text = "",
      numhl = "LspDiagnosticsDefaultHint"
    }
  )
end
