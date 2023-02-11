local nvim_lsp = require('lspconfig')
local rt = require('rust-tools')

local lsp_formatting = function(bufnr)
  vim.lsp.buf.format({
    filter = function(client)
      -- apply whatever logic you want (in this example, we'll only use null-ls)
      return client.name == "null-ls"
    end,
    bufnr = bufnr,
  })
end

local on_attach = function(client, bufnr)
  local buf_opts = { noremap = true, silent = true, buffer = bufnr }

  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, buf_opts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, buf_opts)
  vim.keymap.set('n', '<C-Space>', vim.lsp.buf.hover, buf_opts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, buf_opts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, buf_opts)
  vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, buf_opts)
  vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, buf_opts)
  vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action, buf_opts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, buf_opts)
  vim.keymap.set('n', '<leader>f', vim.lsp.buf.formatting, buf_opts)
  vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, buf_opts)
  vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, buf_opts)
  vim.keymap.set('n', ']d', vim.diagnostic.goto_next, buf_opts)
  vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, buf_opts)

  local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
    vim.api.nvim_command [[augroup END]]
  end
end

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { 'typescript', 'typescriptreact', 'typescript.tsx' },
  cmd = { 'typescript-language-server', '--stdio' },
}

nvim_lsp.sumneko_lua.setup { on_attach = on_attach,
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
    on_attach = on_attach,
    flags = lsp_flags,
    settings = {
      ["rust-analyzer"] = {}
    }
}
