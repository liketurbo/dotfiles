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

-- keymap: save with Ctrl+S
vim.keymap.set('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a', { noremap = true, silent = true })

-- keymaps: quit with Ctrl+Q
vim.keymap.set('n', '<C-q>', ':q<CR>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-q>', '<Esc>:q<CR>', { noremap = true, silent = true })

-- do not keep highlights after search
vim.opt.hlsearch = false

-- enable system clipboard
vim.opt.clipboard = "unnamedplus"
