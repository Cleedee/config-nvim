require("configs.settings")

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'EdenEast/nightfox.nvim'
  vim.cmd('colorscheme nightfox')
end)
