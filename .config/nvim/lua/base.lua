-- Number lines
vim.wo.number = true
-- Global clipboard
vim.opt.clipboard = 'unnamedplus'
-- Tabspace 2
vim.opt.shiftwidth = 2
-- Leader key
vim.g.mapleader = ' '
-- No wrap
vim.wo.wrap = false

-- Highlight yank
vim.api.nvim_command('augroup highlight_yank')
vim.api.nvim_command('autocmd!')
vim.api.nvim_command('au TextYankPost * silent! lua vim.highlight.on_yank { higroup=\'IncSearch\', timeout=200 }')
vim.api.nvim_command('augroup END')

-- Set fold
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'

-- Disable search highlight
vim.opt.hlsearch = false

-- Copilot + cmp
vim.g.copilot_assume_mapped = true
