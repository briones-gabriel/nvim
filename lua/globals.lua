--- VARIABLES ---
_G.PATH       = vim.fn.stdpath("config")
_G.DATA_PATH = vim.fn.stdpath "data"
_G.opts       = { noremap = true, silent = true, expr = false }
_G.optns      = { noremap = true, silent = true }
_G.opt        = vim.opt
_G.g          = vim.g
_G.cmd        = vim.cmd
_G.fn         = vim.fn

--- FUNCTIONS ---
_G.map = function (mode, keybinding, action)
	vim.api.nvim_set_keymap(mode, keybinding, action, opts)
end

_G.cmap = function (mode, keybinding, action, custom_opts)
	vim.api.nvim_set_keymap(mode, keybinding, action, custom_opts)
end

_G.bmap = function(...)
	vim.api.nvim_buf_set_keymap(...)
end

_G.sdef = function (...)
	fn.sign_define(...)
end

_G.t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

_G.check_back_space = function()
    local col = vim.fn.col(".") - 1
    return col == 0 or vim.fn.getline("."):sub(col, col):match("%s") ~= nil
end

_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  elseif vim.fn["vsnip#available"](1) == 1 then
    return t "<Plug>(vsnip-expand-or-jump)"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return vim.fn["compe#complete"]()
  end
end

_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  elseif vim.fn["vsnip#jumpable"](-1) == 1 then
    return t "<Plug>(vsnip-jump-prev)"
  else
    return t "<S-Tab>"
  end
end
