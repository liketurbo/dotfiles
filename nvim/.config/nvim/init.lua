-- highlight yank
vim.api.nvim_command('au TextYankPost * silent! lua vim.highlight.on_yank { higroup=\'IncSearch\', timeout=200 }')

-- highlight cursor line
vim.opt.cursorline = true

-- show whitespaces
vim.opt.list = true
vim.opt.listchars = 'eol:¬,space:·,tab:→·'

-- number lines
vim.opt.number = true

-- indentation settings: use actual tabs, 4 spaces wide
vim.opt.expandtab = false   -- use tabs, not spaces
vim.opt.tabstop = 4         -- width of a tab character
vim.opt.shiftwidth = 4      -- indent size for commands like >>
