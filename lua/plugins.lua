--- PACKER PLUGINS MANAGEMENT ---
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

require("packer").startup(function (use)
	--- PACKER ---
	use {
    "wbthomason/packer.nvim"
  }

	--- COLORSCHEMES ---
	use {
    "RRethy/nvim-base16"
  }

	--- GIT ---
	use {
		"lewis6991/gitsigns.nvim",
		config = require "plugins.nv-gitsigns"
	}
	use {
    "tpope/vim-fugitive"
  }

	--- COMMENTS ---
	use {
		"terrortylor/nvim-comment",
		config = require "plugins.nv-comment",
	}

	--- CORE PLUGINS ---
	use {
		"hoob3rt/lualine.nvim",
		config = require "plugins.nv-lualine",
	}
	use {
		"lukas-reineke/indent-blankline.nvim",
		config = require "plugins.nv-blankline",
	}
	use {
		"kyazdani42/nvim-tree.lua",
		config = require "plugins.nv-tree",
	}
  use {
    "alvarosevilla95/luatab.nvim",
    config = require "plugins.nv-luatab"
  }
	use {
    "kyazdani42/nvim-web-devicons"
  }

	--- TREESITTER ---
	use {
		"nvim-treesitter/nvim-treesitter",
		config = require "plugins.nv-treesitter",
		run = ":TSUpdate",
	}
	use {
		"windwp/nvim-autopairs",
		config = require "plugins.nv-autopairs"
	}
	use {
    "windwp/nvim-ts-autotag"
  }

	--- STARTIFY ---
	use {
    "mhinz/vim-startify"
  }

	--- TELESCOPE ---
	use {
		"nvim-telescope/telescope.nvim",
		config = require "plugins.nv-telescope",
		requires = {
			{"nvim-lua/popup.nvim"},
			{"nvim-lua/plenary.nvim"},
			{"nvim-telescope/telescope-fzy-native.nvim"},
		}
	}

	--- LSP ---
	use {
		"hrsh7th/vim-vsnip",
		config = require "plugins.nv-vsnip"
	}
	use {
		"hrsh7th/nvim-compe",
		config = require "plugins.nv-compe"
	}
	use {
		"neovim/nvim-lspconfig",
		config = require "plugins.lsp"
	}
	use {
    "kabouzeid/nvim-lspinstall"
  }
end)
