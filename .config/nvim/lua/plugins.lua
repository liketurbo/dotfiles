-- If packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'  

  -- Autocompletion
  use {'neoclide/coc.nvim', branch = 'release'}

  -- Easymotion
  use 'easymotion/vim-easymotion'
  -- ... jump to occurrence (normal mode)
  -- ... find a word
  vim.keymap.set('n', 'w', '<Plug>(easymotion-w)')
  vim.keymap.set('n', 'W', '<Plug>(easymotion-b)')
  vim.keymap.set('n', 'H', '<Plug>(easymotion-k)')
  vim.keymap.set('n', 'L', '<Plug>(easymotion-j)')
  -- ... jump to occurrence (visual mode)
  -- ... find a word
  vim.keymap.set('v', 'w', '<Plug>(easymotion-w)')
  vim.keymap.set('v', 'W', '<Plug>(easymotion-b)')
  vim.keymap.set('v', 'H', '<Plug>(easymotion-k)')
  vim.keymap.set('v', 'L', '<Plug>(easymotion-j)')

  -- Theme
  use 'ayu-theme/ayu-vim'
  -- ... config
  vim.g.ayucolor = 'dark'
  vim.cmd "colorscheme ayu"

  -- Bottom line
  use 'itchyny/lightline.vim'
end)
