-- Display line enumeration
vim.wo.number = true

-- Use global clipboard
vim.opt.clipboard = 'unnamedplus'

-- Highlight yank
vim.api.nvim_command('augroup highlight_yank')
vim.api.nvim_command('autocmd!')
vim.api.nvim_command('au TextYankPost * silent! lua vim.highlight.on_yank { higroup=\'IncSearch\', timeout=200 }')
vim.api.nvim_command('augroup END')

-- Change tabspace from 4 to 2
vim.opt.shiftwidth = 2

-- Change leader key
vim.g.mapleader = ' '

-- Disable line wrap
vim.wo.wrap = false
