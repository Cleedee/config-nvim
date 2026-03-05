require("keymaps")
require("options")
require("config.lazy")
require("plugins.keymaps")
require("plugins.options")

-- Global LSP configuration (applies to all servers)
vim.lsp.config("*", {
	-- Example: configure diagnostic virtual text
	diagnostics = {
		virtual_text = true,
	},
	-- Example: an on_attach function to set up buffer-local keymaps
	on_attach = function(client, bufnr)
		-- Enable default Neovim LSP keymaps
		vim.lsp.buf.defaults.mappings()
		-- Add your own keymaps (example)
		vim.keymap.set("n", "gD", vim.lsp.buf.definition, { buffer = bufnr, desc = "LSP: Go to definition" })
		vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr, desc = "LSP: Hover" })
		-- Check :help lsp-defaults for more
	end,
})

-- Enable the language servers
vim.lsp.enable("pylsp")
