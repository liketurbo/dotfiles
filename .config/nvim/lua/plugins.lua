-- If packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'  

  -- Theme
  use 'ayu-theme/ayu-vim'
  
  -- Bottom line
  use 'itchyny/lightline.vim'

  -- Fuzzy finder
  use 'airblade/vim-rooter'
  use {'junegunn/fzf', run = './install --bin'}
  use {'ibhagwan/fzf-lua',
    -- ... icon support
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- More reasonable highlight search
  use 'romainl/vim-cool'

  -- NVim LSP configuration
  use 'neovim/nvim-lspconfig'

  -- Rust LSP
  use 'simrat39/rust-tools.nvim'

  -- Show state of the progress
  use 'j-hui/fidget.nvim'
  
  -- Highlight trouble lines
  use 'folke/trouble.nvim'

  -- Autocomplete
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'

  -- Easy hop (analog of Easymotion)
  use {
    'phaazon/hop.nvim',
    branch = 'v2'
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'karb94/neoscroll.nvim'
end)
