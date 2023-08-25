-- Lsp-zero
local lsp_zero = require("lsp-zero").preset("recommended")
local cmp = require("cmp")
local lspconfig = require("lspconfig")
local lsnip = require("luasnip")
local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Luasnip
require("luasnip.loaders.from_lua").load()
lsnip.setup({
    history = true,
    update_events = { "TextChanged", "TextChangedI" },
    enable_autosnippets = true,
})

lsp_zero.on_attach(function(_, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr })
    vim.keymap.set(
        "n",
        "gr",
        "<Cmd>Telescope lsp_references<CR>",
        { buffer = true, desc = "Show references in a Telescope window." }
    )
end)

-- Language servers
lsp_zero.ensure_installed({
    "lua_ls",
})
lspconfig.lua_ls.setup({
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim", "s", "t", "i", "d", "c", "sn", "f" },
            },
            format = {
                enable = false,
            },
        },
    },
})
lspconfig.clangd.setup({
    capabilities = capabilities,
    arguments = {'-Wall'},

filetypes = { "c", "cpp", "objc", "objcpp" },
})
-- Completion setup
cmp.setup({
    sources = {
        { name = "luasnip", option = { show_autosnippets = true } },
        { name = "nvim_lua" },
        { name = "nvim_lsp" },
        { name = "path" },
    },
    mapping = {
        --- @param fallback function
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif lsnip.expand_or_jumpable() then
                lsnip.expand_or_jump()
            else
                fallback()
            end
        end, { "i", "s" }), -- Tab autocomplete
        --- @param fallback function
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif lsnip.jumpable(-1) then
                lsnip.jump(-1)
            else
                fallback()
            end
        end, { "i", "s" }),
        ["<CR>"] = cmp.mapping.confirm({ select = false }), -- Enter to complete
        ["<Up>"] = cmp.mapping.abort(), -- No up and down selection
        ["<Down>"] = cmp.mapping.abort(),
        --- @param fallback function
        ["<C-l>"] = cmp.mapping(function(fallback) -- Move choice forward
            if lsnip.choice_active() then
                lsnip.change_choice()
            else
                fallback()
            end
        end),
        --- @param fallback function
        ["<C-h>"] = cmp.mapping(function(fallback) -- Move choice backward
            if lsnip.choice_active() then
                lsnip.change_choice(-1)
            else
                fallback()
            end
        end),
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    -- Expands snippets
    snippet = {
        expand = function(args) lsnip.lsp_expand(args.body) end,
    },
})


lsp_zero.setup()
