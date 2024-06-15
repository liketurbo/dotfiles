-- LSP client config
return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")

		local on_attach = function(client, buf)
			local opts = { noremap = true, silent = true }

			vim.api.nvim_buf_set_keymap(buf, "i", "<C-i>", "<cmd>lua vim.lsp.buf.format({ async = true })<CR>", opts)
			vim.api.nvim_buf_set_keymap(buf, "n", "<C-i>", "<cmd>lua vim.lsp.buf.format({ async = true })<CR>", opts)
		end

		lspconfig.lua_ls.setup {
			on_attach = on_attach
		}
		lspconfig.rust_analyzer.setup {
			on_attach = on_attach
		}
	end
}
