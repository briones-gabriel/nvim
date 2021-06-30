require('gitsigns').setup {
	signs = {
		add          = { hl = 'GitAdd'   , text = '▕', numhl = 'GitSignsAddNr' },
		change       = { hl = 'GitChange', text = '▕', numhl = 'GitSignsChangeNr' },
		delete       = { hl = 'GitDelete', text = '▕', numhl = 'GitSignsDeleteNr' },
		topdelete    = { hl = 'GitDelete', text = '▕', numhl = 'GitSignsDeleteNr' },
		changedelete = { hl = 'GitChange', text = '▕', numhl = 'GitSignsChangeNr' },
	},
	numhl = false,
	linehl = false,
	keymaps = {
		noremap = true,
		buffer = true,
		['n <Leader>h]'] = { expr = true, "&diff ? ']c' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'"},
		['n <Leader>h['] = { expr = true, "&diff ? '[c' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'"},
	},
	watch_index = {
		interval = 1000
	},
	current_line_blame = false,
	sign_priority = 6,
	update_debounce = 100,
	status_formatter = nil, -- Use default
	use_decoration_api = true,
	use_internal_diff = true,  -- If luajit is present
}

cmd("hi GitAdd guifg=#8fa867")
cmd("hi GitChange guifg=#ffc66b")
cmd("hi GitDelete guifg=#e74946")
