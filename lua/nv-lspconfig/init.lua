local function on_attach(client)
    -- Set some keybinds conditional on server capabilities
    if client.resolved_capabilities.document_formatting then
        nmap("<Leader>fm", "<cmd>lua vim.lsp.buf.formatting()<CR>")
    elseif client.resolved_capabilities.document_range_formatting then
        vmap("<Leader>fm", "<cmd>lua vim.lsp.buf.range_formatting()<CR>")
    end
end

-- LspInstall + LspConfig
local function setup_servers()
    require "lspinstall".setup()

    local lspconf = require("lspconfig")
    local servers = require("lspinstall").installed_servers()

    for _, lang in pairs(servers) do
        if lang ~= "lua" then
            lspconf[lang].setup {
                on_attach = on_attach,
                root_dir = vim.loop.cwd
            }
        elseif lang == "lua" then
            lspconf[lang].setup {
                root_dir = function()
                    return vim.loop.cwd()
                end,
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" }
                        },
                        workspace = {
                            library = {
                                [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                                [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true
                            }
                        },
                        telemetry = {
                            enable = false
                        }
                    }
                }
            }
        end
    end
end

setup_servers()

-- Formatters and linters
local prettier = {
    formatCommand = "prettier --stdin-filepath ${ INPUT }",
    formatStdin = true
}

local eslint = {
    lintCommand = "./node_modules/.bin/eslint -f unix --stdin --stdin-filename ${ INPUT }",
    lintIgnoreExitCode = true,
    lintStdin = true,
    lintFormats = { "%f:%l:%c: %m" },
    formatCommand = "./node_modules/.bin/eslint --fix-to-stdout --stdin --stdin-filename=${ INPUT }",
    formatStdin = true
}

local js_args = {}
table.insert(js_args, prettier)
table.insert(js_args, eslint)

require("lspconfig").efm.setup {
    cmd = { DATA_PATH .. "/lspinstall/efm/efm-langserver" },
    init_options = {
        documentFormatting = true,
        codeAction = true
    },
    filetypes = {
        "javascriptreact",
        "javascript",
        "typescript",
        "typescriptreact",
        "html",
        "css",
        "vue"
    },
    settings = {
        rootMarkers = { ".git/" },
        languages = {
            javascript = js_args,
            javascriptreact = js_args,
            typescript = js_args,
            typescriptreact = js_args,
            html = { prettier },
            css = { prettier },
            json = { prettier },
        }
    }
}

-- replace the default lsp diagnostic letters with prettier symbols
sdef("LspDiagnosticsSignError", { text = "", numhl = "LspDiagnosticsDefaultError" })
sdef("LspDiagnosticsSignWarning", { text = "", numhl = "LspDiagnosticsDefaultWarning" })
sdef("LspDiagnosticsSignInformation", { text = "", numhl = "LspDiagnosticsDefaultInformation" })
sdef("LspDiagnosticsSignHint", { text = "", numhl = "LspDiagnosticsDefaultHint" })
