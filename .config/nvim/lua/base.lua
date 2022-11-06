-- Display relative line enumeration on the side
vim.wo.number = true
vim.wo.relativenumber = true

-- Use global clipboard
vim.opt.clipboard = 'unnamedplus'

-- Highlight yank
vim.api.nvim_command('augroup highlight_yank')
vim.api.nvim_command('autocmd!')
vim.api.nvim_command('au TextYankPost * silent! lua vim.highlight.on_yank { higroup=\'IncSearch\', timeout=200 }')
vim.api.nvim_command('augroup END')
