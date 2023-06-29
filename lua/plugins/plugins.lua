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
  { "neovim/nvim-lspconfig" },
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate" -- :MasonUpdate updates registry contents
  },
  { "williamboman/mason-lspconfig.nvim" }
}
