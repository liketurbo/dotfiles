-- Highlight yank
vim.api.nvim_command('au TextYankPost * silent! lua vim.highlight.on_yank { higroup=\'IncSearch\', timeout=200 }')
-- Format on save
vim.api.nvim_create_autocmd("BufWritePre", {
	buffer = buffer,
	callback = function()
		vim.lsp.buf.format {}
	end
})
-- Show whitespaces
vim.opt.list = true
vim.opt.listchars = 'eol:¬,space:·,tab:··'
-- Global clipboard
vim.opt.clipboard = 'unnamedplus'
-- Number lines
vim.opt.number = true
-- No wrap
vim.opt.wrap = false
-- Leader key
vim.g.mapleader = ' '
-- Treesitter folding
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.cmd("set nofoldenable")
-- Tab 4 spaces
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.tabstop = 4
vim.cmd("set noexpandtab")
vim.opt.timeoutlen = 300
-- Highlight cursor line
vim.opt.cursorline = true
