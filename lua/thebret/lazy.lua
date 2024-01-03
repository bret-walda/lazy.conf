local plugins = {
    { 'folke/lazy.nvim' },
    { 'nvim-lualine/lualine.nvim',
    dependencies = {
        { 'nvim-tree/nvim-web-devicons', lazy = true },
    },

},
{ "ggandor/leap.nvim",
    dependencies ={
        { "tpope/vim-repeat" },
    },

},

      {
          'nvim-telescope/telescope.nvim', tag = '0.1.5',
          -- or                            , branch = '0.1.x',
          dependencies = { {'nvim-lua/plenary.nvim'}, },
      },

  {
      'rose-pine/neovim',
  },

  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate',
  dependencies = { { 'nvim-treesitter/playground' },
                   { 'mbbill/undotree' },
                   { 'tpope/vim-fugitive' },


  },

  },

  {"folke/neodev.nvim", opts = {} },

  {"rcarriga/nvim-dap-ui",
  dependencies = {
      {"mfussenegger/nvim-dap"},
      {"nvim-telescope/telescope-dap.nvim"},
      {'theHamsta/nvim-dap-virtual-text'},
  },

  },
  {
      "nvim-neorg/neorg",
      build = ":Neorg sync-parsers",
  },

  {"kylechui/nvim-surround",
    version = "*"
  },
  {
      'akinsho/toggleterm.nvim',
      version = "*",
  },
{
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
dependencies = {
    -- LSP Support
    --
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'saadparwaiz1/cmp_luasnip'},
    {'rafamadriz/friendly-snippets'},
    {'L3MON4D3/LuaSnip'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-nvim-lua'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

},
},
{
    'windwp/nvim-autopairs'
},
}
 require("lazy").setup(plugins, { defaults = {lazy = false,},})
