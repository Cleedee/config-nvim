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

-- No seu init.lua ou arquivo de configuração de LSP
if vim.fn.has('nvim-0.11') == 1 then
  -- Configura as capacidades do blink para todos os LSPs automaticamente
  vim.lsp.config('*', {
    capabilities = require('blink.cmp').get_lsp_capabilities(),
  })

  -- Habilita o servidor para Python (instale-o via Mason ou pip primeiro)
  -- Certifique-se de ter o 'basedpyright' ou 'pyright' instalado
  vim.lsp.enable('pyright') 
end

-- Exemplo de configuração de LSP para Python no init.lua
vim.lsp.config('pyright', {
  cmd = { 'pyright-langserver', '--stdio' },
  filetypes = { 'python' },
  root_markers = { 'pyproject.toml', 'setup.py', 'requirements.txt', '.git' },
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
      },
    },
  },
})

-- Ativar o LSP para Python
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'python',
  callback = function()
    vim.lsp.enable('pyright')
  end,
})


vim.lsp.config('ruff', {
    init_options = {
        settings = {
            -- configurações do servidor de linguagem Ruff
        }
    }
})

-- Native LSP Config (0.11+)
-- vim.lsp.enable("pyright")
vim.lsp.enable("ruff")

-- Keymaps
-- Atalho: <Leader>e para abrir o Oil
vim.keymap.set("n", "<leader>e", "<CMD>Oil<CR>", { desc = "Abrir Oil (Navegador de Arquivos)" })
vim.keymap.set("n", "<leader>ds", vim.diagnostic.open_float, { desc = "Mostrar diagnóstico" })
vim.keymap.set("n", "[d", function()
	vim.diagnostic.jump({ count = -1, float = true })
end)
vim.keymap.set("n", "]d", function()
	vim.diagnostic.jump({ count = 1, float = true })
end)

vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- File explorer nativo
