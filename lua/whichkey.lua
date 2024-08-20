local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end
local status, telescope = pcall(require, "telescope.builtin")
if not status then
  return
end

local setup = {
  plugins = {
    marks = true,             -- shows a list of your marks on ' and `
    registers = true,         -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    spelling = {
      enabled = true,         -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      suggestions = 20,       -- how many suggestions should be shown in the list?
    },
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- No actual key bindings are created
    presets = {
      operators = false,         -- adds help for operators like d, y, ... and registers them for motion / text object completion
      motions = true,            -- adds help for motions
      text_objects = true,       -- help for text objects triggered after entering an operator
      windows = true,            -- default bindings on <c-w>
      nav = true,                -- misc bindings to work with windows
      z = true,                  -- bindings for folds, spelling and others prefixed with z
      g = true,                  -- bindings for prefixed with g
    },
  },
  -- add operators that will trigger motion and text object completion
  -- to enable all native operators, set the preset / operators plugin above
  -- operators = { gc = "Comments" },
  icons = {
    breadcrumb = "»",    -- symbol used in the command line area that shows your active key combo
    separator = "➜",    -- symbol used between a key and it's label
    group = "+",          -- symbol prepended to a group
  },
  layout = {
    height = { min = 4, max = 25 },                                               -- min and max height of the columns
    width = { min = 20, max = 50 },                                               -- min and max width of the columns
    spacing = 3,                                                                  -- spacing between columns
    align = "left",                                                               -- align columns left, center or right
  },
  show_help = true,                                                               -- show help message on the command line when the popup is visible
  triggers = "auto",                                                              -- automatically setup triggers
  -- triggers = {"<leader>"} -- or specify a list manually
}

local opts = {
  mode = "n",       -- NORMAL mode
  prefix = "<leader>",
  buffer = nil,     -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true,    -- use `silent` when creating keymaps
  noremap = true,   -- use `noremap` when creating keymaps
  nowait = true,    -- use `nowait` when creating keymaps
}

local mappings = {
  {"e",  "<cmd>Neotree toggle<cr>", desc = "Diretórios", nowait = true, remap = false },  -- Árvore de diretórios
  {"k",  "<cmd>bdelete<CR>", desc = "Fechar Buffer", nowait = true, remap = false },       -- Close current file
  {"p",  "<cmd>Lazy<CR>", desc = "Plugins", nowait = true, remap = false },                -- Invoking plugin manager
  {"q",  "<cmd>wqall!<CR>", desc = "Sair salvando", nowait = true, remap = false },        -- Quit Neovim after saving the file
  {"w",  "<cmd>w!<CR>", desc = "Salvar", nowait = true, remap = false },                   -- Save current file
  {"m",  "<cmd>Mason<cr>", desc  = "Mason" },
  ["r"] = { "<cmd>lua vim.lsp.buf.format{async=true}<cr>", "Reformatar Código" },
  l = {
    name = "LSP",
    a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
    i = { "<cmd>LspInfo<cr>", "Info" },
    l = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
    r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
    s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
    S = {
      "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
      "Workspace Symbols",
    },
  },
  f = {
    name = "Telescope",
    f = { function() telescope.find_files() end, "Find files" },
    g = {
      function()
        telescope.live_grep {
          additional_args = function(args) return vim.list_extend(args, { "--hidden", "--no-ignore" }) end,
        }
      end, "Find words in all files"
    },
    b = { function() telescope.buffers() end, "Find buffers" },
    h = { function() telescope.help_tags() end, "Find help" },
    t = { "<cmd>TodoTelescope<cr>", "Find todos" }
  }
}

which_key.setup(setup)
which_key.register(mappings, opts)
