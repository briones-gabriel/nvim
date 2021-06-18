require('base16-colorscheme').setup({
    base00 = '#262627', base01 = '#323234', base02 = '#383839', base03 = '#8a8a8a',
    base04 = '#a4a3a3', base05 = '#ced1d4', base06 = '#ffc66d', base07 = '#ffffff',
    base08 = '#ced1d4', base09 = '#83b1f1', base0A = '#a781bb', base0B = '#8fa867',
    base0C = '#ced1d4', base0D = '#ffc66b', base0E = '#cd7832', base0F = '#808080'
})

local cmd = vim.cmd

-- Common tweaking
cmd("hi TSTag guifg=#ffc66b")
cmd("hi TSTagDelimiter guifg=#cd7832")
cmd("hi TSComment guifg=None")
cmd("hi Comment ctermfg=14 gui=italic guifg=#8a8a8a")
cmd("hi Error guibg=bg")

-- NvimTree
cmd("hi NvimTreeRootFolder guifg=#323234")
cmd("hi NvimTreeNormal guibg=#323234")
cmd("hi NvimTreeVertSplit guifg=bg")
cmd("hi Directory guifg=fg")

-- NvimTree GitAdd
cmd("hi NvimTreeGitMerge guifg=#FFC66B")
cmd("hi NvimTreeGitStaged guifg=#FFC66B")

-- NvimTree GitChange
cmd("hi NvimTreeGitIgnored guifg=#83b1f1")
cmd("hi NvimTreeGitDirty guifg=#83b1f1")
cmd("hi NvimTreeGitRenamed guifg=#83b1f1")
cmd("hi NvimTreeGitNew guifg=#83b1f1")

-- NvimTree GitDelete
cmd("hi NvimTreeGitDeleted guifg=#E74946")

-- BufferLine
cmd("hi BufferLineBackground guifg=#8a8a8a guibg=#1c1c1d")
cmd("hi BufferLineBufferSelected gui=bold,italic guifg=#ced1d4 guibg=#262627")
cmd("hi BufferLineBufferVisible guifg=#8a8a8a guibg=#222223")
cmd("hi BufferLineFill guifg=#8a8a8a guibg=#141415")
cmd("hi BufferLineIndicatorSelected guifg=#323234 guibg=#262627")
cmd("hi BufferLinePick gui=bold,italic guifg=#ced1d4 guibg=#1c1c1d")
cmd("hi BufferLinePickSelected gui=bold,italic guifg=#ced1d4 guibg=#262627")
cmd("hi BufferLinePickVisible gui=bold,italic guifg=#ced1d4 guibg=#222223")
cmd("hi BufferLineSeparator guifg=#141415 guibg=#1c1c1d")
cmd("hi BufferLineSeparatorSelected guifg=#141415 guibg=#262627")
cmd("hi BufferLineSeparatorVisible guifg=#141415 guibg=#222223")
cmd("hi BufferLineTab  guifg=#8a8a8a guibg=#1c1c1d")
cmd("hi BufferLineTabClose guifg=#8a8a8a guibg=#1c1c1d")
cmd("hi BufferLineTabSelected guifg=#323234 guibg=#262627")
cmd("hi BufferlineDevIconDefault guifg=#6d8086 guibg=#1c1c1d")
cmd("hi BufferlineDevIconhtmlSelected guifg=#e34c26 guibg=#262627")
cmd("hi BufferlineDevIconts guifg=#519aba guibg=#1c1c1d")
cmd("hi BufferlineDevIcontsInactive guifg=#519aba guibg=#222223")
cmd("hi BufferlineDevIcontsSelected guifg=#519aba guibg=#262627")

-- Indentline
cmd("hi IndentBlanklineChar guifg=#373737")
