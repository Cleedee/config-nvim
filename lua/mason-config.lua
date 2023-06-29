local status, mason = pcall(require, "mason")
if (not status) then return end

local status_ok, lspconfig = pcall(require, "mason-lspconfig")
if (not status_ok) then return end

mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})
