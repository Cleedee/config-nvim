return {
  -- the colorscheme should be available when starting Neovim
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
