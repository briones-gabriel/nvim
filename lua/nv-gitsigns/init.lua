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
    -- Default keymap options
    noremap = true,
    buffer = true,

    ['n <Leader>hn'] = { expr = true, "&diff ? ']c' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'"},
    ['n <Leader>hp'] = { expr = true, "&diff ? '[c' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'"},

    ['n <leader>hs'] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
    ['n <leader>hS'] = '<cmd>lua require"gitsigns".stage_buffer()<CR>',
    ['n <leader>hu'] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
    ['n <leader>hr'] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
    ['n <leader>hR'] = '<cmd>lua require"gitsigns".reset_buffer()<CR>',
    ['n <leader>hP'] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
    ['n <leader>hb'] = '<cmd>lua require"gitsigns".blame_line(true)<CR>',

    -- Text objects
    --['o ih'] = ':<C-U>lua require"gitsigns".select_hunk()<CR>',
    ['n <Leader>sh'] = ':<C-U>lua require"gitsigns".select_hunk()<CR>',
    --['x ih'] = ':<C-U>lua require"gitsigns".select_hunk()<CR>'
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

vim.cmd("hi GitAdd guifg=#8fa867")
vim.cmd("hi GitChange guifg=#ffc66b")
vim.cmd("hi GitDelete guifg=#e74946")
