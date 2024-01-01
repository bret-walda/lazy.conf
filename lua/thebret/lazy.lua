local plugins = {
    { 'folke/lazy.nvim' },
    { 'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true },

},
{ "ggandor/leap.nvim",
    dependencies = { "tpope/vim-repeat" },

},

      {
          'nvim-telescope/telescope.nvim', tag = '0.1.4',
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
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  dependencies = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'saadparwaiz1/cmp_luasnip'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-nvim-lua'},
    {'windwp/nvim-autopairs'},

    -- Snippets
    {'L3MON4D3/LuaSnip'},
    {'rafamadriz/friendly-snippets'},
},
},
}
 require("lazy").setup(plugins, { defaults = {lazy = true,},})
