-- Copy
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true })
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>a", { noremap = true })
-- Quit
vim.keymap.set("n", "<C-q>", ":q!<CR>", { noremap = true })
vim.keymap.set("i", "<C-q>", "<Esc>:q!<CR>", { noremap = true })
-- Toogle buffers
vim.keymap.set("n", "<leader><leader>", "<C-^>", { noremap = true })
