local plugins = {
	--- PACKER ---
	{"wbthomason/packer.nvim"},

	--- COLORSCHEMES ---
	{"RRethy/nvim-base16"},

	--- GIT ---
	{
		"lewis6991/gitsigns.nvim",
		config = require "plugins.nv-gitsigns",
	},
	{"tpope/vim-fugitive"},

	--- COMMENTS ---
	{
		"terrortylor/nvim-comment",
		config = require "plugins.nv-comment",
	},

	--- CORE PLUGINS ---
	{
		"hoob3rt/lualine.nvim",
		config = require "plugins.nv-lualine",
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		config = require "plugins.nv-blankline",
	},
	{
		"kyazdani42/nvim-tree.lua",
		config = require "plugins.nv-tree",
	},
  {
    "alvarosevilla95/luatab.nvim",
    config = require "plugins.nv-luatab"
  },
	{"kyazdani42/nvim-web-devicons"},

	--- TREESITTER ---
	{
		"nvim-treesitter/nvim-treesitter",
		config = require "plugins.nv-treesitter",
		run = ":TSUpdate",
	},
	{
		"windwp/nvim-autopairs",
		config = require "plugins.nv-autopairs"
	},
	{"windwp/nvim-ts-autotag"},

	--- STARTIFY ---
	{"mhinz/vim-startify"},

	--- TELESCOPE ---
	{
		"nvim-telescope/telescope.nvim",
		config = require "plugins.nv-telescope",
		requires = {
			{"nvim-lua/popup.nvim"},
			{"nvim-lua/plenary.nvim"},
			{"nvim-telescope/telescope-fzy-native.nvim"},
		},
	},

	--- LSP ---
	{
		"hrsh7th/vim-vsnip",
		config = require "plugins.nv-vsnip",
	},
	{
		"hrsh7th/nvim-compe",
		config = require "plugins.nv-compe",
	},
	{
		"neovim/nvim-lspconfig",
		config = require "plugins.lsp",
	},
	{"kabouzeid/nvim-lspinstall"},
}

--- PACKER PLUGINS MANAGEMENT ---
local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({"git", "clone", "https://github.com/wbthomason/packer.nvim", install_path})
	vim.api.nvim_command("packadd packer.nvim")
end

require("packer").startup(function (use)
  use(plugins)
end)
