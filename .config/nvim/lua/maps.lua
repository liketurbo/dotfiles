-- Create a new file in the current directory
vim.keymap.set('n', '<leader>o', ':e <C-R>=expand("%:p:h") . "/" <CR>')

-- Save a file
vim.keymap.set('n', '<leader>w', ':w<CR>')

-- Toggle between buffers
vim.keymap.set('n', '<leader><leader>', '<C-^>', { noremap = true })

-- Switch back to normal mode
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('i', 'kj', '<Esc>')
