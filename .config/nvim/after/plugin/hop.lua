local hop = require('hop')
local directions = require('hop.hint').HintDirection

hop.setup {}

vim.keymap.set('n', 'f', function()
  vim.cmd('.g/^$/normal )')
  hop.hint_words({direction = directions.AFTER_CURSOR})
end, {remap=true})
vim.keymap.set('n', 'F', function()
  vim.cmd('.g/^$/normal )')
  hop.hint_words({direction = directions.BEFORE_CURSOR})
end, {remap=true})
vim.keymap.set('n', 'J', function()
  vim.cmd('.g/^$/normal )')
  hop.hint_lines_skip_whitespace({direction = directions.AFTER_CURSOR})
end, {remap=true})
vim.keymap.set('n', 'K', function()
  vim.cmd('.g/^$/normal )')
  hop.hint_lines_skip_whitespace({direction = directions.BEFORE_CURSOR})
end, {remap=true})
