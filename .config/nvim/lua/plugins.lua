-- If packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'  

  -- Autocompletion
  use {'neoclide/coc.nvim', branch = 'release'}

  -- Theme
  use 'ayu-theme/ayu-vim'
  -- ... config
  vim.g.ayucolor = 'dark'
  vim.cmd "colorscheme ayu"

  -- Bottom line
  use 'itchyny/lightline.vim'

  -- Fuzzy finder
  use {'junegunn/fzf', run = './install --bin'}
  use {'ibhagwan/fzf-lua',
    -- ... icon support
    requires = {'kyazdani42/nvim-web-devicons'}
  }
  vim.keymap.set('n', '<C-p>',
      "<cmd>lua require('fzf-lua').files()<CR>",
      {noremap = true, silent = true}
  )
  vim.keymap.set('n', '<leader>;',
      "<cmd>lua require('fzf-lua').buffers()<CR>", 
      {noremap = true, silent = true}
  )
end)
