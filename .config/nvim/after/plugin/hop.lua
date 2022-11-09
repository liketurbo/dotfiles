local hop = require('hop')
local directions = require('hop.hint').HintDirection

hop.setup {}

vim.keymap.set('', 'f', function()
  vim.cmd('.g/^$/normal )')
  hop.hint_words({direction = directions.AFTER_CURSOR})
end, {remap=true})
vim.keymap.set('', 'F', function()
  vim.cmd('.g/^$/normal )')
  hop.hint_words({direction = directions.BEFORE_CURSOR})
end, {remap=true})
vim.keymap.set('', 'J', function()
  vim.cmd('.g/^$/normal )')
  hop.hint_lines_skip_whitespace({direction = directions.AFTER_CURSOR})
end, {remap=true})
vim.keymap.set('', 'K', function()
  vim.cmd('.g/^$/normal )')
  hop.hint_lines_skip_whitespace({direction = directions.BEFORE_CURSOR})
end, {remap=true})
