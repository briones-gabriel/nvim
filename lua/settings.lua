require("opts")

local apply_options = function(opts)
  for k, v in pairs(opts) do
    vim.opt[k] = v
  end
end

local options = {
	number = true,
	relativenumber = true,
	nu = true,
	showmatch = true,
	laststatus = 2,
	showmode = false,
	hidden = true,
	cursorline = true,
	termguicolors = true,
	hlsearch = true,
	errorbells = false,
	wrap = false,
	scrolloff = 4,
	sidescroll = 2,
	sidescrolloff = 12,
	tabstop = 4,
	shiftwidth = 4,
	expandtab = true,
	colorcolumn = 120,
	autoindent = true,
	backup = false,
	smartindent = true,
	smarttab = true,
	encoding = "UTF-8",
	mouse = "a",
	timeoutlen = 400,
	updatetime = 100,
	completeopt = { "menu", "menuone", "noselect", "noinsert" },
}

apply_options(options)
