local nvim_lsp = require('lspconfig')
local rt = require('rust-tools')

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

  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
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

nvim_lsp.pyright.setup {
  on_attach = on_attach,
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "off",
      },
    },
  },
}
