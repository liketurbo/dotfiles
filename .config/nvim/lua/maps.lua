vim.keymap.set('n', '<leader>o', ':e <C-R>=expand("%:p:h") . "/" <CR>') -- Pwd new file
vim.keymap.set('n', '<leader>w', ':w<CR>') -- Save
vim.keymap.set('n', '<leader><leader>', '<C-^>', { noremap = true }) -- Toggle buffers

-- Switch back to normal mode
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('i', 'kj', '<Esc>')
