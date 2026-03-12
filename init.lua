-- ~/.config/nvim/init.lua
require("config.lazy")

-- Leader key
vim.g.mapleader = " "

-- Options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.clipboard = "unnamedplus"
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.mouse = "a"
vim.opt.timeoutlen = 300 -- Delay curto para atalhos

-- Native LSP Config (0.11+)
vim.lsp.enable("pyright")

-- Keymaps
-- Atalho: <Leader>e para abrir o Oil
vim.keymap.set("n", "<leader>e", "<CMD>Oil<CR>", { desc = "Abrir Oil (Navegador de Arquivos)" })
-- vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", function()
	vim.diagnostic.jump({ count = -1, float = true })
end)
vim.keymap.set("n", "]d", function()
	vim.diagnostic.jump({ count = 1, float = true })
end)

vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- File explorer nativo
