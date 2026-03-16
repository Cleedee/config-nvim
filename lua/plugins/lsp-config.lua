return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { 
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    require("mason").setup()

    -- No Neovim 0.11, os handlers agora ficam DENTRO do setup
    require("mason-lspconfig").setup({
      ensure_installed = { "lua_ls", "pyright", "ts_ls" }, -- Coloque seus LSPs aqui
      
      -- Esta é a parte que substitui o antigo 'setup_handlers'
      handlers = {
        function(server_name)
          require("lspconfig")[server_name].setup({})
        end,
        
        -- Se precisar configurar um LSP específico (ex: lua_ls)
        ["lua_ls"] = function()
          require("lspconfig").lua_ls.setup({
            settings = { Lua = { diagnostics = { globals = { "vim" } } } }
          })
        end,
      },
    })
  end,
}
