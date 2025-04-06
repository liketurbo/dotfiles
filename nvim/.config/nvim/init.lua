-- highlight yank
vim.api.nvim_command('au TextYankPost * silent! lua vim.highlight.on_yank { higroup=\'IncSearch\', timeout=200 }')
-- highlight cursor line
vim.opt.cursorline = true
-- show whitespaces
vim.opt.list = true
vim.opt.listchars = 'eol:¬,space:·,tab:··'
-- number lines
vim.opt.number = true
