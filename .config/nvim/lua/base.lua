vim.g.mapleader = ' ' -- Leader key
vim.wo.wrap = false -- No wrap
vim.wo.number = true -- Number lines
vim.opt.clipboard = 'unnamedplus' -- Global clipboard
vim.opt.hlsearch = false -- Disable search highlight
vim.api.nvim_command('au TextYankPost * silent! lua vim.highlight.on_yank { higroup=\'IncSearch\', timeout=200 }') -- Highlight yank
vim.opt.timeoutlen = 200 -- Time to wait for a mapped sequence to complete (in milliseconds)


-- Tabspace 2
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
