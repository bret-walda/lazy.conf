local lsp = require('lsp-zero')
lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)


require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {},
    handlers = {
        lsp.default_setup,
        lua_ls = function()
            local lua_opts = lsp.nvim_lua_ls()
            require('lspconfig').lua_ls.setup(lua_opts)
        end,
    },
})

require('lspconfig').clangd.setup({})


local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
local cmp_select = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
    sources = {
        {name = 'nvim_lsp'},
        {name = 'luasnip'},
        {name = 'buffer'},
        {name = 'path'},
        {name = 'nvim_lua'},
    },
    mapping = cmp.mapping.preset.insert({

    ['<CR>'] = cmp.mapping.confirm({select = false}),

    ['<C-Space>'] = cmp.mapping.complete(),

    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),

    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),


    }),
})
