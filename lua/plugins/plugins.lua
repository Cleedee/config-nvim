return {
  "folke/neodev.nvim",
  {
    "folke/which-key.nvim",
    lazy = true,
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
  },
  { "folke/neoconf.nvim", cmd = "Neoconf" },

  -- markdown support
  { "godlygeek/tabular"  }, -- necessário para o vim-markdown
  { "plasticboy/vim-markdown" },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  'onsails/lspkind-nvim',
  'hrsh7th/cmp-buffer', -- nvim-cmp source for buffer words
  'hrsh7th/cmp-nvim-lsp', -- nvim-cmp source for neovim's built-in LSP
  'hrsh7th/nvim-cmp', -- Completion
  'neovim/nvim-lspconfig', -- LSP
  'jose-elias-alvarez/null-ls.nvim',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'glepnir/lspsaga.nvim',
  'L3MON4D3/LuaSnip',
  'windwp/nvim-autopairs',
  'windwp/nvim-ts-autotag'
}
