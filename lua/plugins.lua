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
        -- Git gutter
        use "airblade/vim-gitgutter"
        -- Nvim comment
        use "terrortylor/nvim-comment"
        -- Lualine
        use "hoob3rt/lualine.nvim"
        -- Dev icons
        use "kyazdani42/nvim-web-devicons"
        -- Telescope
        use "nvim-telescope/telescope.nvim"
        use "nvim-lua/popup.nvim"
        use "nvim-lua/plenary.nvim"
        -- Indent lines
        use "Yggdroot/indentLine"
        use "lukas-reineke/indent-blankline.nvim"
        -- Nvim tree
        use "kyazdani42/nvim-tree.lua"
    end
)
