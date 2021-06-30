-- Global variable
_G.g = vim.opt
_G.vimg = vim.g
DATA_PATH = vim.fn.stdpath('data')

-- Map in normal mode
_G.nmap = function(keymap, command)
    vim.api.nvim_set_keymap("n", keymap, command, { noremap = true, silent = true })
end

-- Sign define
_G.sdef = function(...)
    vim.fn.sign_define(...)
end

-- Map in visual mode
_G.vmap = function(keymap, command)
    vim.api.nvim_set_keymap("v", keymap, command, { noremap = true, silent = true })
end

-- Map in insert mode
_G.imap = function(keymap, command)
    vim.api.nvim_set_keymap("i", keymap, command, { expr = true })
end

-- Map in special? mode
_G.smap = function(keymap, command)
    vim.api.nvim_set_keymap("s", keymap, command, { expr = true })
end

-- Execute a command
_G.cmd = function (command)
    vim.cmd(command)
end

-- Use (s-)tab to move in the completion menu
local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

_G.tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-n>"
    elseif vim.fn.call("vsnip#available", {1}) == 1 then
        return t "<Plug>(vsnip-expand-or-jump)"
    elseif check_back_space() then
        return t "<Tab>"
    else
        return vim.fn['compe#complete']()
    end
end

_G.s_tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-p>"
    elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
        return t "<Plug>(vsnip-jump-prev)"
    else
        -- If <S-Tab> is not working in your terminal, change it to <C-h>
        return t "<S-Tab>"
    end
end

-- Set tabs
_G.set_tabs = function(tabsnr)
    g.tabstop = tabsnr
    g.tabstop = tabsnr
    g.shiftwidth = tabsnr
    g.shiftwidth = tabsnr
end
