-- If packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'  

  -- Autocompletion
  use {'neoclide/coc.nvim', branch = 'release'}
end)
