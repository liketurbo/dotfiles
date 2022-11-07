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

  -- ... custom keymaps
  vim.keymap.set('n', '<C-p>',
      "<cmd>lua require('fzf-lua').files()<CR>",
      {noremap = true, silent = true}
  )
  vim.keymap.set('n', '<leader>;',
      "<cmd>lua require('fzf-lua').buffers()<CR>", 
      {noremap = true, silent = true}
  )

  -- Easymotion
  use 'easymotion/vim-easymotion'

  -- ... disable <leader><leader>
  vim.keymap.set('n', '<leader>', '<Plug>(easymotion-prefix)')

  -- ... find a word
  vim.keymap.set('n', 'f', '<Plug>(easymotion-w)')
  vim.keymap.set('n', 'F', '<Plug>(easymotion-b)')
  vim.keymap.set('v', 'f', '<Plug>(easymotion-w)')
  vim.keymap.set('v', 'F', '<Plug>(easymotion-b)')

  -- ... find a line
  vim.keymap.set('n', 'K', '<Plug>(easymotion-k)')
  vim.keymap.set('n', 'J', '<Plug>(easymotion-j)')
  vim.keymap.set('v', 'K', '<Plug>(easymotion-k)')
  vim.keymap.set('v', 'J', '<Plug>(easymotion-j)')
end)
