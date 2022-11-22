local nvim_lsp = require('lspconfig')
local rt = require('rust-tools')

local on_attach = function(client, bufnr)
  local buf_opts = { noremap = true, silent = true, buffer = bufnr }

  vim.keymap.set('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', buf_opts)
  vim.keymap.set('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', buf_opts)
  vim.keymap.set('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', buf_opts)
  vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', buf_opts)
  vim.keymap.set('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', buf_opts)
  vim.keymap.set('n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', buf_opts)
  vim.keymap.set('n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<CR>', buf_opts)
  vim.keymap.set('n', '<leader>a', '<cmd>lua vim.lsp.buf.code_action()<CR>', buf_opts)
  vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', buf_opts)
  vim.keymap.set('n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.open_float()<CR>', buf_opts)
  vim.keymap.set('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', buf_opts)
  vim.keymap.set('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', buf_opts)
  vim.keymap.set('n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', buf_opts)
  vim.keymap.set('n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', buf_opts)

  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
    vim.api.nvim_command [[augroup END]]
  end
end

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { 'javascript', 'javascriptreact', 'javascript.jsx', 'typescript', 'typescriptreact', 'typescript.tsx' },
  cmd = { 'typescript-language-server', '--stdio' },
}

nvim_lsp.sumneko_lua.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      }
    },
    workspace = {
      library = vim.api.nvim_get_runtime_file('', true),
    }
  }
}

rt.setup {
  tools = {
    runnables = {
      use_telescope = true,
    },
    inlay_hints = {
      auto = true,
      show_parameter_hints = false,
      parameter_hints_prefix = "",
      other_hints_prefix = "",
    },
  },
  server = {
    on_attach = on_attach,
    settings = {
      ["rust-analyzer"] = {
        checkOnSave = {
          command = "clippy",
        },
      },
    },
  },
}
