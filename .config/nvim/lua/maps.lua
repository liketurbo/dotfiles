-- Increment/decrement
vim.keymap.set('n', '+', '<C-a>')
vim.keymap.set('n', '-', '<C-x>')

-- Select all
vim.keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Toggle between buffers
vim.keymap.set('n', '<leader><leader>', '<C-^>')

-- Save file
vim.keymap.set('n', '<leader>w', ':w<CR>')
