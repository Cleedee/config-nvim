local status, nvim_lsp = pcall(require, "lspconfig")
if (not status) then return end

nvim_lsp.pyright.setup{}
