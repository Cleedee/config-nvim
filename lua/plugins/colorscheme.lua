return {
  -- the colorscheme should be available when starting Neovim
  {
    "folke/tokyonight.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
  'EdenEast/nightfox.nvim',
  'elvessousa/sobrio',
  'catppuccin/nvim',
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000, 
    opts = function()
      return {
        transparent = true,
      }
    end,
  }

}
