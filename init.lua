require("keymaps")
require("options")
require("lazy_bootstrap")
require("lualine-config")
require("lsp-config")
require("lspkind-config")
require("cmp-config")
require("autopairs-config")
require("ts-autotag-config")
require("telescope-config")
require("mason-config")
require("whichkey")
require("web-devicons")
require("pomo")
 --require("colorscheme")

vim.cmd.colorscheme("solarized-osaka")
--vim.cmd.colorscheme("morning")
--Restore cursor position
vim.api.nvim_create_autocmd({"BufReadPost"}, {
  pattern = { "*" },
  callback = function()
    vim.api.nvim_exec('silent! normal! g`"zv', false)
  end,
})
