-- Copy
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>a", { noremap = true, silent = true })
-- Quit
vim.keymap.set("n", "<C-q>", ":q<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-q>", "<Esc>:q<CR>", { noremap = true, silent = true })
-- Toogle buffers
vim.keymap.set("n", "<leader><leader>", "<C-^>", { noremap = true, silent = true })
-- Escape
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("i", "kj", "<Esc>", { noremap = true, silent = true })
