-- Packer Bootstrapping
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({"git", "clone", "https://github.com/wbthomason/packer.nvim", install_path})
  execute "packadd packer.nvim"
end

-- Plugins list
require("packer").startup(
    function()
        use "wbthomason/packer.nvim"
        -- Colorscheme
        use "briones-gabriel/darcula-solid.nvim"
        use "rktjmp/lush.nvim"
        -- Git Gutter
        use "lewis6991/gitsigns.nvim"
        -- Nvim Comment
        use "terrortylor/nvim-comment"
        -- Lualine
        use "hoob3rt/lualine.nvim"
        -- Icons
        use "kyazdani42/nvim-web-devicons"
        -- Telescope
        use "nvim-telescope/telescope.nvim"
        use "nvim-lua/popup.nvim"
        use "nvim-lua/plenary.nvim"
        use "nvim-telescope/telescope-fzy-native.nvim"
        -- Indent lines
        use "Yggdroot/indentLine"
        use "lukas-reineke/indent-blankline.nvim"
        -- NvimTree
        use "kyazdani42/nvim-tree.lua"
        -- Vim Maximizer
        use "szw/vim-maximizer"
        -- LSP
        use "neovim/nvim-lspconfig"
        use "hrsh7th/nvim-compe"
        use "hrsh7th/vim-vsnip"
        use "kabouzeid/nvim-lspinstall"
        use { "kkoomen/vim-doge", run = ":call doge#install()" }
        -- Treesitter
        use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
        -- TODO Comments
        use "folke/todo-comments.nvim"
        -- Toolwindow
        use "folke/trouble.nvim"
        use "akinsho/nvim-toggleterm.lua"
        use "ethanjwright/toolwindow.nvim"
    end
)
