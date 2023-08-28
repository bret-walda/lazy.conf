local plugins = {
    { 'folke/lazy.nvim' },
    { 'glepnir/galaxyline.nvim',
      branch = 'main',

      config = function()
          require('galaxyline')
      end,

      dependencies ={ { 'kyazdani42/nvim-web-devicons', lazy = true },},
  },
      {
          'nvim-telescope/telescope.nvim', tag = '0.1.0',
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
  {'theprimeagen/harpoon'},
{
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
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
