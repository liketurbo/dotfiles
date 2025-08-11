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

-- keymap: force quit with Ctrl+Q then q
vim.keymap.set('n', '<C-S-q>', ':q!<CR>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-S-q>', '<Esc>:q!<CR>', { noremap = true, silent = true })

-- do not keep highlights after search
vim.opt.hlsearch = false

-- enable system clipboard
vim.opt.clipboard = "unnamedplus"

-- make Cyrillic keys act as Latin keys in Normal/Visual/Operator-pending modes
vim.opt.langmap =
    'фa,иb,сc,вd,уe,аf,пg,рh,шi,оj,лk,дl,ьm,тn,щo,зp,йq,кr,ыs,еt,гu,мv,цw,чx,нy,яz,' ..
    'ФA,ИB,СC,ВD,УE,АF,ПG,РH,ШI,ОJ,ЛK,ДL,ЬM,ТN,ЩO,ЗP,ЙQ,КR,ЫS,ЕT,ГU,МV,ЦW,ЧX,НY,ЯZ'
