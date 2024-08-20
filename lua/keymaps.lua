vim.g.mapleader = " "

local function map(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { silent = true })
end

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Save
map("n", "<leader>w", "<CMD>update<CR>")

-- Quit
map("n", "<leader>q", "<CMD>q<CR>")

    -- Normal --
-- Select all
--keymap("n", "<C-a>", "gg<S-v>G")
-- Better window navigation
map("n", "<C-h>", "<C-w>h", opts) -- left window
map("n", "<C-k>", "<C-w>k", opts) -- up window
map("n", "<C-j>", "<C-w>j", opts) -- down window
map("n", "<C-l>", "<C-w>l", opts) -- right window

-- Resize with arrows when using multiple windows
map("n", "<C-Up>", ":resize -2<CR>", opts)
map("n", "<c-down>", ":resize +2<cr>", opts)
map("n", "<c-right>", ":vertical resize -2<cr>", opts)
map("n", "<c-left>", ":vertical resize +2<cr>", opts)


-- navigate buffers
map("n", "<tab>", ":bnext<cr>", opts) -- Next Tab 
map("n", "<s-tab>", ":bprevious<cr>", opts) -- Previous tab
map("n", "<leader>h", ":nohlsearch<cr>", opts) -- No highlight search

-- move text up and down
map("n", "<a-j>", "<esc>:m .+1<cr>==gi", opts) -- Alt-j 
map("n", "<a-k>", "<esc>:m .-2<cr>==gi", opts) -- Alt-k

-- insert --
-- press jk fast to exit insert mode 
map("i", "jk", "<esc>") -- Insert mode -> jk -> Normal mode
map("i", "kj", "<esc>") -- Insert mode -> kj -> Normal mode

-- visual --
-- stay in indent mode
map("v", "<", "<gv", opts) -- Right Indentation
map("v", ">", ">gv", opts) -- Left Indentation

-- move text up and down
map("v", "<a-j>", ":m .+1<cr>==", opts)
map("v", "<a-k>", ":m .-2<cr>==", opts)

-- Visual Block --
-- Move text up and down
    --Terminal --
map("x", "J", ":move '>+1<CR>gv-gv", opts)
map("x", "K", ":move '<-2<CR>gv-gv", opts)
map("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
map("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

--Better terminal navigation
map("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
map("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
map("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
map("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
