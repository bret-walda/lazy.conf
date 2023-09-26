require("neodev").setup({
    library =  { plugin = { "nvim-dap-ui "}, types = true },
})

local lspconfig = require('lspconfig')

lspconfig.lua_ls.setup({
    settings = {
        Lua = {
            completion = {
                callSnippet = "Replace"
            }
        }
    }
})
