-- Automatically change theme
require('theme-autochange');

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
-- treesitter folding
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.cmd("set nofoldenable")
-- Tab 4 spaces
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.tabstop = 4
vim.cmd("set noexpandtab")

-- Maps
vim.keymap.set('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })           -- copy
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a', { noremap = true, silent = true })     -- copy
vim.keymap.set('n', '<C-q>', ':q<CR>', { noremap = true, silent = true })           -- quit
vim.keymap.set('i', '<C-q>', '<Esc>:q<CR>', { noremap = true, silent = true })      -- quit
vim.keymap.set('n', '<leader><leader>', '<C-^>', { noremap = true, silent = true }) -- toggle buffers

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- Code highlight
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				ensure_installed = { "lua", "bash", "rust" },
				indent = {
					enable = true
				}
			})
		end
	},
	-- Tokyonight theme
	"folke/tokyonight.nvim",
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local telescope = require("telescope")
			local actions = require("telescope.actions")
			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<C-p>", builtin.find_files, { noremap = true, silent = true })

			telescope.setup {
				defaults = {
					mappings = {
						n = {
							["<C-q>"] = actions.close,
						},
						i = {
							["<C-q>"] = actions.close,
						},
					}
				}
			}
		end
	},
	{
		"karb94/neoscroll.nvim",
		config = function()
			local neoscroll = require('neoscroll')
			neoscroll.setup({
				-- All these keys will be mapped to their corresponding default scrolling animation
				mappings = { '<C-u>', '<C-d>' },
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require('lspconfig')
			lspconfig.lua_ls.setup {}
		end
	}
})
