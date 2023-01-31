-- If packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Theme
  use 'folke/tokyonight.nvim'

  -- Bottom line
  use 'itchyny/lightline.vim'

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- GitHub Copilot
  use 'github/copilot.vim'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- Rust LSP
  use 'simrat39/rust-tools.nvim'

  -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'jose-elias-alvarez/null-ls.nvim'

  -- Pictograms
  use 'onsails/lspkind.nvim'

  -- Autocomplete
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/vim-vsnip' -- required for cmp
  use 'hrsh7th/vim-vsnip-integ' -- required for cmp
end)
