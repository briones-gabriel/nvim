return function(client, bufnr)
	--- MAPPINGS ---
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
	bmap(bufnr,    "n",    "gD",           "<cmd>lua vim.lsp.buf.declaration()<CR>",                                opts)
	bmap(bufnr,    "n",    "gd",           "<cmd>lua vim.lsp.buf.definition()<CR>",                                 opts)
	bmap(bufnr,    "n",    "gi",           "<cmd>lua vim.lsp.buf.implementation()<CR>",                             opts)
	bmap(bufnr,    "n",    "<Leader>wa",   "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>",                       opts)
	bmap(bufnr,    "n",    "<Leader>wr",   "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>",                    opts)
	bmap(bufnr,    "n",    "<Leader>wl",   "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
	bmap(bufnr,    "n",    "<Leader>D",    "<cmd>lua vim.lsp.buf.type_definition()<CR>",                            opts)
	bmap(bufnr,    "n",    "<Leader>rn",   "<cmd>lua vim.lsp.buf.rename()<CR>",                                     opts)
	bmap(bufnr,    "n",    "<Leader>ca",   "<cmd>lua vim.lsp.buf.code_action()<CR>",                                opts)
	bmap(bufnr,    "n",    "gr",           "<cmd>lua vim.lsp.buf.references()<CR>",                                 opts)
	bmap(bufnr,    "n",    "<Leader>e",    "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>",               opts)
	bmap(bufnr,    "n",    "<S-C-j>",      "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>",                           opts)
	bmap(bufnr,    "n",    ";f",           "<cmd>lua vim.lsp.buf.formatting()<CR>",                                 opts)

	-- Formatting
	if client.resolved_capabilities.document_formatting then
		vim.api.nvim_command [[augroup Format]]
		vim.api.nvim_command [[autocmd! * <buffer>]]
		vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
		vim.api.nvim_command [[augroup END]]
	end
end
