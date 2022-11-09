vim.keymap.set('n', '<C-p>',
    "<cmd>lua require('fzf-lua').files()<CR>",
    {noremap = true, silent = true}
)
vim.keymap.set('n', '<leader>;',
    "<cmd>lua require('fzf-lua').buffers()<CR>", 
    {noremap = true, silent = true}
)
vim.keymap.set('n', '<leader>f',
    "<cmd>lua require('fzf-lua').grep_cWORD()<CR>", 
    {noremap = true, silent = true}
)
