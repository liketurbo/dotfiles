local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "rust",
    "javascript",
    "toml",
    "fish",
    "json",
    "yaml",
    "css",
    "html",
    "lua",
    "c",
    "cpp",
  },
  autotag = {
    enable = true,
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.func = {
  install_info = {
    url = "/home/kennym/Projects/tree-sitter-func",
    files = { "src/parser.c", },
    branch = "master",
    generate_requires_npm = false,
    requires_generate_from_grammar = false,
  },
  filetype = "func",
}
vim.api.nvim_command [[autocmd BufNewFile,BufRead *.func setfiletype func]]
vim.api.nvim_command [[autocmd BufNewFile,BufRead *.fc setfiletype func]]
