-- Increment/decrement
vim.keymap.set('n', '+', '<C-a>')
vim.keymap.set('n', '-', '<C-x>')

-- Select all
vim.keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Create a new file in the current directory
vim.cmd('nnoremap <leader>o :e <C-R>=expand("%:p:h") . "/" <CR>')

-- Paste with <C-v>
vim.keymap.set('i', '<C-v>', '<C-r>"')

-- Close buffer
vim.keymap.set('n', '<leader>q', ':bd')

-- Save a file
vim.keymap.set('n', '<leader>w', ':w<CR>')

-- Toggle between buffers
vim.keymap.set('n', '<leader><leader>', '<C-^>', {noremap = true})
