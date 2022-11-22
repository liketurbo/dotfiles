vim.g.mapleader = ' ' -- Leader key
vim.g.copilot_assume_mapped = true -- Copilot + cmp
vim.wo.wrap = false -- No wrap
vim.wo.number = true -- Number lines
vim.opt.clipboard = 'unnamedplus' -- Global clipboard
vim.opt.hlsearch = false -- Disable search highlight

-- Tabspace 2
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Highlight yank
vim.api.nvim_command('augroup highlight_yank')
vim.api.nvim_command('autocmd!')
vim.api.nvim_command('au TextYankPost * silent! lua vim.highlight.on_yank { higroup=\'IncSearch\', timeout=200 }')
vim.api.nvim_command('augroup END')
