-- Highlight the current line
vim.opt.cursorline = true
vim.opt.termguicolors = true

require('nvim-treesitter.configs').setup {
  ensure_installed = { "bash", "fish", "css", "dockerfile", "help", "html", "javascript", "typescript", "json", "lua", "markdown", "python", "regex", "rust", "toml", "vim", "yaml"},
  highlight = {
    enable = true,
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}
