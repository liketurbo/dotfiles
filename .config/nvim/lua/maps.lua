local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

-- Do not yank on x
map('n', 'x', '"_x', opts)

-- Increment/decrement
map('n', '+', '<C-a>', opts)
map('n', '-', '<C-x>', opts)

vim.keymap.set('n', '+', '<C-a>')
