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
  use {'junegunn/fzf', run = './install --bin'}
  use {'ibhagwan/fzf-lua',
    -- ... icon support
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  -- Easymotion
  use 'easymotion/vim-easymotion'

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
end)
