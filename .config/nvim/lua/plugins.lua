-- If packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'  

  -- Autocompletion
  use {'neoclide/coc.nvim', branch = 'release'}

  -- Easymotion
  use 'easymotion/vim-easymotion'
  -- ... find a word
  vim.keymap.set('n', '<leader>w', '<Plug>(easymotion-w)')
  vim.keymap.set('n', '<leader>W', '<Plug>(easymotion-b)')
  vim.keymap.set('v', '<leader>w', '<Plug>(easymotion-w)')
  vim.keymap.set('v', '<leader>W', '<Plug>(easymotion-b)')
  -- ... find a line
  vim.keymap.set('n', 'K', '<Plug>(easymotion-k)')
  vim.keymap.set('n', 'J', '<Plug>(easymotion-j)')
  vim.keymap.set('v', 'K', '<Plug>(easymotion-k)')
  vim.keymap.set('v', 'J', '<Plug>(easymotion-j)')

  -- Theme
  use 'ayu-theme/ayu-vim'
  -- ... config
  vim.g.ayucolor = 'dark'
  vim.cmd "colorscheme ayu"

  -- Bottom line
  use 'itchyny/lightline.vim'
end)
