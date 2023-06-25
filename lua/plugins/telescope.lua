return {
  {
    "nvim-telescope/telescope.nvim",
    -- install fzf native
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
    keys = {
      -- change a keymap
      { "<C-p>", "<cmd>Telescope find_files<CR>", desc = "Find Files" },
      -- add a keymap to browse plugin files
      {
        "<leader>fp",
        function()
          require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
        end,
        desc = "Find Plugin File",
      },
      {
        "<leader>fg",
        function()
          require("telescope.builtin").live_grep()
        end,
        desc= "Find words",
      },
      -- This is using b because it used to be fzf's :Buffers
      {
        "<leader>b",
        "<cmd>Telescope oldfiles<cr>",
        desc = "Recent",
      },
    },
  },
}
