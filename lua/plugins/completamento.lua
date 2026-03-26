return {
  'saghen/blink.cmp',
  dependencies = 'rafamadriz/friendly-snippets', -- Opcional: coleção de snippets
  version = '*', -- Use a versão estável mais recente

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    -- Atalhos de teclado padrão (similares ao VS Code)
    keymap = { preset = 'default' },

    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono'
    },

    -- Fontes de completamento
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
  },
}


