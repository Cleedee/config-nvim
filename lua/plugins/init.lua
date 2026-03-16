return {
	{ "folke/todo-comments.nvim", opts = {} },
	-- Fuzzy Finder: Busca Arquivos, Texto, etc.
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
		end,
	},
	-- File Explorer: Navegação no estilo "buffer"
	{
		"stevearc/oil.nvim",
		opts = {},
		dependencies = { { "nvim-mini/mini.icons", opts = {} } },
		lazy = false,
		config = function()
			require("oil").setup({
				columns = { "icon" },
				keymaps = {
					["<C-c>"] = false,
					["<leader>q"] = "actions.close",
				},
				view_options = { show_hidden = true },
			})
		end,
	},
	-- UI para o Telescope
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		branch = "main", -- Recomendado para Neovim 0.11+
		build = ":TSUpdate",
		config = function()
			local ts = require("nvim-treesitter")

			local languages = {
				"bash",
				"css",
				"html",
				"javascript",
				"json",
				"lua",
				"markdown",
				"python",
				"typescript",
				"yaml",
			}

			ts.setup({
				-- Enable syntax highlighting
				highlight = {
					enable = true,
				},
				-- Enable indentation
				indent = {
					enable = true,
				},
				-- List of parsers to install
				ensure_installed = languages,
				-- Install parsers synchronously during setup (useful for initial setup)
				-- This is optional; you can also run `:TSInstall` manually.
				install = {
					enable = true,
					-- Ensure synchronous installation when bootstrapping
					sync = true,
					-- After installation, enable the features
					-- Note: this part is often managed by the 'highlight' and 'indent' options above,
					-- but can be used for more granular control.
					-- A common pattern in newer treesitter is to use the `highlight` and `indent` booleans
					-- in `ts.setup` for standard functionality.
					-- The explicit Autocmd setup for older configs is less necessary now.
				},
			})
		end,
	},
}
