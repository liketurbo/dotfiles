-- Increment/decrement
vim.keymap.set('n', '+', '<C-a>')
vim.keymap.set('n', '-', '<C-x>')

-- Select all
vim.keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Create a new file in the current directory
vim.cmd('nnoremap <leader>o :e <C-R>=expand("%:p:h") . "/" <CR>')

-- Paste with <C-v>
vim.keymap.set('i', '<C-v>', '<C-r>"')
