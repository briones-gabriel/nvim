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
        -- Gruvbox
        use "gruvbox-community/gruvbox"
        -- NerdTree
        use "preservim/nerdtree"
        use "ryanoasis/vim-devicons"
        use "tiagofumo/vim-nerdtree-syntax-highlight"
        -- Git integration
        use "Xuyuanp/nerdtree-git-plugin"
        use "airblade/vim-gitgutter"
        use "terrortylor/nvim-comment"
        -- Lualine
        use {
            "hoob3rt/lualine.nvim",
            requires = { "kyazdani42/nvim-web-devicons", opt = true }
        }
        -- Telescope
        use {
          "nvim-telescope/telescope.nvim",
          requires = {
            { "nvim-lua/popup.nvim" },
            { "nvim-lua/plenary.nvim" }
          }
        }
        -- Indent lines
        use "Yggdroot/indentLine"
        use "lukas-reineke/indent-blankline.nvim"
    end
)
