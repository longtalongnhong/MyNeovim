local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Some shotcut key
-- S -> Shift
-- M -> Alt
-- C -> Control
-- n -> nomal mode
-- v -> visual mode
-- i -> insert mode

keymap("n", "<M-f>", ":NvimTreeToggle<CR>", opts)

-- Window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-,>", ":bnext<CR>", opts)
keymap("n", "<S-.>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Back to normal mode
keymap("i", "jk", "<Esc>", opts)

-- Visual
-- Stay 'in' indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Visual block
-- Move up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '>-2<CR>gv-gv", opts)
keymap("x", "<A-J>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-K>", ":move '>+1<CR>gv-gv", opts)

-- Terminal
-- Navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Command
-- Menu navigation
keymap("c", "<C-j>", 'pumvisible() ? "\\<C-n" : "\\<C-j>"', { expr = true, noremap = true})
keymap("c", "<C-k>", 'pumvisible() ? "\\<C-p" : "\\<C-k>"', { expr = true, noremap = true})
