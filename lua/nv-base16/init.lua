require('base16-colorscheme').setup({
    base00 = '#262627', base01 = '#323234', base02 = '#383839', base03 = '#8a8a8a',
    base04 = '#a4a3a3', base05 = '#ced1d4', base06 = '#ffc66d', base07 = '#ffffff',
    base08 = '#ced1d4', base09 = '#83b1f1', base0A = '#a781bb', base0B = '#8fa867',
    base0C = '#ced1d4', base0D = '#ffc66b', base0E = '#cd7832', base0F = '#808080'
})

-- Common tweaking
vim.cmd("hi TSTag guifg=#ffc66b")
vim.cmd("hi TSTagDelimiter guifg=#cd7832")
vim.cmd("hi TSComment guifg=None")
vim.cmd("hi Error guibg=bg")

-- NvimTree
vim.cmd("hi NvimTreeFolderIcon guifg=#87939A")
vim.cmd("hi Directory guifg=fg")
-- NvimTree GitAdd
vim.cmd("hi NvimTreeGitMerge guifg=#8FA867")
vim.cmd("hi NvimTreeGitStaged guifg=#8FA867")
-- NvimTree GitChange
vim.cmd("hi NvimTreeGitIgnored guifg=#FFC66B")
vim.cmd("hi NvimTreeGitDirty guifg=#FFC66B")
vim.cmd("hi NvimTreeGitRenamed guifg=#FFC66B")
vim.cmd("hi NvimTreeGitNew guifg=#FFC66B")
-- NvimTree GitDelete
vim.cmd("hi NvimTreeGitDeleted guifg=#E74946")
