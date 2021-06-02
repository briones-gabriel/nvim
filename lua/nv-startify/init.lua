local g = vim.g
g.webdevicons_enable_startify = 1
g.startify_enable_special = 0
g.startify_session_autoload = 1
g.startify_session_delete_buffers = 1
g.startify_session_dir = "~/.config/nvim/sessions/"
g.startify_lists = {
    { type = "sessions",  header = {"   Sessions"}       },
    { type = "files",     header = {"   Files"}          },
    { type = 'dir', header = { "   Current Directory '"..vim.fn.getcwd().."'" } },
    --{ type = "commands",  header = {"   Commands"}       },
    { type = "bookmarks", header = {"   Bookmarks"}      },
}
g.startify_bookmarks = {
    { e = "~/IdeaProjects/eutopia-green/"},
    { p = '~/.config/nvim/lua/plugins.lua'},
    { i = '~/.config/nvim/init.lua'},
    { c = '~/.config/nvim/lua/settings.lua'},
    { m = '~/.config/nvim/lua/keybindings.lua'},
    { b = '~/.bashrc' },
}
