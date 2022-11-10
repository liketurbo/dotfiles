vim.keymap.set('n', '<C-p>',
    "<cmd>lua require('fzf-lua').files()<CR>",
    {noremap = true, silent = true}
)
vim.keymap.set('n', '<leader>;',
    "<cmd>lua require('fzf-lua').buffers()<CR>", 
    {noremap = true, silent = true}
)
vim.keymap.set('n', '<leader>f',
    "<cmd>lua require('fzf-lua').live_grep()<CR>", 
    {noremap = true, silent = true}
)
