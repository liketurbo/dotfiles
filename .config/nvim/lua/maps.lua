vim.keymap.set('n', '<leader>o', ':e <C-R>=expand("%:p:h") . "/" <CR>') -- Pwd new file
vim.keymap.set('n', '<leader>w', ':w<CR>') -- Save
vim.keymap.set('n', '<leader><leader>', '<C-^>', { noremap = true }) -- Toggle buffers
vim.keymap.set('i', '<C-v>', '<C-r> <C-r>+', { noremap = true }) -- Paste from clipboard
vim.keymap.set('i', '<C-z>', '<C-o>u', { noremap = true }) -- Undo in insert mode

-- Switch back to normal mode
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('i', 'kj', '<Esc>')
