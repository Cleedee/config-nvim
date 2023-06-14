return {
  "folke/neodev.nvim",
  {
    "folke/which-key.nvim",
    lazy = true
  },
  { "folke/neoconf.nvim", cmd = "Neoconf" },

  -- markdown support
  { "godlygeek/tabular"  }, -- necessário para o vim-markdown
  { "plasticboy/vim-markdown" },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
}
