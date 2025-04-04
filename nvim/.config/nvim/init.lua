-- Highlight yank
vim.api.nvim_command('au TextYankPost * silent! lua vim.highlight.on_yank { higroup=\'IncSearch\', timeout=200 }')
-- Show whitespaces
vim.opt.list = true
vim.opt.listchars = 'eol:¬,space:·,tab:··'
-- Global clipboard
vim.opt.clipboard = 'unnamedplus'
-- Number lines
vim.opt.number = true
-- Leader key
vim.g.mapleader = ' '
-- Tab 4 spaces
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.tabstop = 4
vim.cmd("set noexpandtab")
vim.opt.timeoutlen = 300
-- Highlight cursor line
vim.opt.cursorline = true
-- Vertical edge space
vim.opt.scrolloff = 3
-- Horizontal edge space
vim.opt.sidescrolloff = 3
-- Disable search highlights
vim.opt.hlsearch = false

-- Custom maps
require('maps');

-- Automatically change theme
require('theme-autochange');

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
