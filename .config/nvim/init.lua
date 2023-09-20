require('theme-autochange');

-- Basic
vim.api.nvim_command('au TextYankPost * silent! lua vim.highlight.on_yank { higroup=\'IncSearch\', timeout=200 }') -- highlight yank
vim.opt.clipboard = 'unnamedplus' -- global clipboard
vim.opt.number = true -- number lines
vim.opt.wrap = false -- no wrap
vim.g.mapleader = ' ' -- leader key

-- Maps
vim.keymap.set('n', '<C-s>', ':w<CR>', { noremap = true, silent = true }) -- copy
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a', { noremap = true, silent = true }) -- copy
vim.keymap.set('n', '<C-q>', ':q<CR>', { noremap = true, silent = true }) -- quit
vim.keymap.set('i', '<C-q>', '<Esc>:q<CR>', { noremap = true, silent = true }) -- quit
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
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
	  ensure_installed = { "lua", "bash", "rust" },
	  sync_install = false,
	  highlight = { enable = true },
	  indent = { enable = true },  
	})
    end
  },
  -- Tokyonight theme
  "folke/tokyonight.nvim",
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function ()
      local telescope = require("telescope")
      local actions = require("telescope.actions")
      local builtin = require("telescope.builtin")

      vim.keymap.set("n", "<C-p>", builtin.find_files, { noremap = true, silent = true })
      telescope.setup{
	defaults = {
	  mappings = {
	    n = {
	      ["q"] = actions.close,
	      ["l"] = actions.select_default
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
	  mappings = {'<C-u>', '<C-d>'},
      })
    end
  }
})
