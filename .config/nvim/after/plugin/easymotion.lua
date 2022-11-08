-- ... disable <leader><leader>
vim.keymap.set('n', '<leader>', '<Plug>(easymotion-prefix)')

-- ... find a word
vim.keymap.set('n', 'f', '<Plug>(easymotion-w)')
vim.keymap.set('n', 'F', '<Plug>(easymotion-b)')
vim.keymap.set('v', 'f', '<Plug>(easymotion-w)')
vim.keymap.set('v', 'F', '<Plug>(easymotion-b)')

-- ... find a line
vim.keymap.set('n', 'K', '<Plug>(easymotion-k)')
vim.keymap.set('n', 'J', '<Plug>(easymotion-j)')
vim.keymap.set('v', 'K', '<Plug>(easymotion-k)')
vim.keymap.set('v', 'J', '<Plug>(easymotion-j)')
