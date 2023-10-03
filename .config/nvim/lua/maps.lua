vim.keymap.set('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })           -- copy
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a', { noremap = true, silent = true })     -- copy
vim.keymap.set('n', '<C-q>', ':q<CR>', { noremap = true, silent = true })           -- quit
vim.keymap.set('i', '<C-q>', '<Esc>:q<CR>', { noremap = true, silent = true })      -- quit
vim.keymap.set('n', '<leader><leader>', '<C-^>', { noremap = true, silent = true }) -- toggle buffers
vim.keymap.set('i', 'jk', '<Esc>', { noremap = true, silent = true })               -- quit
vim.keymap.set('i', 'kj', '<Esc>', { noremap = true, silent = true })               -- quit
