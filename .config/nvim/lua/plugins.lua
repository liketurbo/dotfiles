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
	-- Gruvbox theme
	"ellisonleao/gruvbox.nvim",
	-- Telescope preview
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local telescope = require("telescope")
			local actions = require("telescope.actions")
			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<C-p>", builtin.find_files, { noremap = true, silent = true })
			vim.keymap.set("n", "<leader>b", builtin.buffers, { noremap = true, silent = true })

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
			local neoscroll = require("neoscroll")
			neoscroll.setup({
				easing_function = nil
			})

			local config = require("neoscroll.config")
			config.set_mappings({
				["<C-u>"] = { "scroll", {
					"-vim.wo.scroll", "true", "100", nil
				} },
				["<C-d>"] = { "scroll", {
					"vim.wo.scroll", "true", "100", nil
				} },
				["<C-b>"] = { "scroll", {
					"-vim.api.nvim_win_get_height(0)", "true", "100", nil } },
				["<C-f>"] = { "scroll", {
					"vim.api.nvim_win_get_height(0)", "true", "100", nil } },
				["zz"] = { "zz", { "100" } }
			})
		end
	},
	-- LSP client config
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup {}
		end
	},
	-- Status line
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local lualine = require("lualine")
			lualine.setup {
				options = {
					component_separators = "",
					section_separators = "",
				},
				sections = {
					lualine_x = { "encoding" },
					lualine_y = {}
				}
			}
		end
	}
})
