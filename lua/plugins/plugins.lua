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
}
