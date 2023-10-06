-- Telescope preview
return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<C-p>", builtin.find_files, { noremap = true, silent = true })
		vim.keymap.set("n", "<C-i>", builtin.buffers, { noremap = true, silent = true })

		telescope.setup {
			defaults = {
				initial_mode = "normal",
				mappings = {
					n = {
						["<C-q>"] = actions.close,
						["l"] = actions.select_default,
					},
					i = {
						["<C-q>"] = actions.close,
					},
				}
			}
		}
	end
}
