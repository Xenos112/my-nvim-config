local map = vim.keymap.set

map("i", "jk", "<ESC>")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("v", "<leader>/", "gc", {})
map("n", "<leader>?", "g?", {})
map("n", "<leader>/", "gcc", {})

map("n", "<tab>", ":bn<CR>", {})
map("n", "<S-tab>", ":bp<CR>", {})

map("n", "<leader>x", ":bd<CR>", {})
map("v", "<A-j>", ":m '>+1<CR>gv=gv", {})
map("v", "<A-k>", ":m '<-2<CR>gv=gv", {})
