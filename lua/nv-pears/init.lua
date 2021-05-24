-- Configuration
local R = require "pears.rule"

require "pears".setup(function(conf)
    conf.on_enter(function(pears_handle)
        if vim.fn.pumvisible() == 1 and vim.fn.complete_info().selected ~= -1 then
            return vim.fn["compe#confirm"]("<CR>")
        else
            pears_handle()
        end
    end)
    conf.pair("<", {
        close = ">",
        -- Don't expand a quote if it comes after an alpha character
        should_expand = R.not_(R.start_of_context "[a-zA-Z]");
    })
  conf.preset "tag_matching"
end)

-- Keybindings
vim.api.nvim_set_keymap("i", "<C-l>", "<cmd>lua require 'pears'.expand()<CR>", Keymap_options)
