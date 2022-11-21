-- If packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'  

  use 'folke/tokyonight.nvim'
  
  -- Bottom line
  use 'itchyny/lightline.vim'

  -- Fuzzy finder
  use 'airblade/vim-rooter'
  use {'junegunn/fzf', run = './install --bin'}
  use {'ibhagwan/fzf-lua',
    -- ... icon support
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- NVim LSP configuration
  use 'neovim/nvim-lspconfig'

  -- Rust LSP
  use 'simrat39/rust-tools.nvim'

  -- Show state of the progress
  use {
    'j-hui/fidget.nvim',
    config = function()
      require'fidget'.setup {}
    end
  }
  
  -- Highlight trouble lines
  use {
    'folke/trouble.nvim',
    config = function()
      require'trouble'.setup {}
    end
  }

  -- Autocomplete
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- GitHub Copilot
  use 'github/copilot.vim'
	-- File explorer
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use { "nvim-telescope/telescope-file-browser.nvim" }
end)
