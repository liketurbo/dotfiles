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
	-- Smooth scroll
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
	-- LSP client config
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require('lspconfig')
			lspconfig.lua_ls.setup {}
		end
	}
})
