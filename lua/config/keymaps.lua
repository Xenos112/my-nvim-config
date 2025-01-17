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
map({ 'i', 'n' }, "<A-j>", "<Esc>:m .+1<CR>==gi", {})
map({ 'i', 'n' }, "<A-k>", "<Esc>:m .-2<CR>==gi", {})
map('n', '<leader>e', ':Explore<CR>', {})
