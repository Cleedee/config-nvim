local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Save with ctrl + s
keymap("n", "<C-s>", ":w<CR>", { noremap = true })

-- In visual mode move text with J and K
keymap("x", "J", ":move '>+1gv-gv", opts)
keymap("x", "K", ":move '<-2gv-gv", opts)

-- Copy relative path with F4, usually I use this in tests
keymap("n", "<F4>", ':let @+ = fnamemodify(expand("%"), ":~:.")<CR>', opts)

-- Improve navigations in neovim windows with ctrl + neovim navigation keys
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- In insert mode go to normal mode with jk
keymap("i", "jk", "<ESC>", opts)
