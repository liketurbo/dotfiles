return {
	-- Gruvbox theme
	"ellisonleao/gruvbox.nvim",
	-- Smooth scroll
	{
		"karb94/neoscroll.nvim",
		config = function()
			local neoscroll = require("neoscroll")
			neoscroll.setup({
				easing_function = nil
			})

			local config = require("neoscroll.config")
			config.set_mappings({
				["<C-u>"] = { "scroll", {
					"-vim.wo.scroll", "true", "100", nil
				} },
				["<C-d>"] = { "scroll", {
					"vim.wo.scroll", "true", "100", nil
				} },
				["zz"] = { "zz", { "100" } }
			})
		end
	},
	-- Status line
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local lualine = require("lualine")
			lualine.setup {
				options = {
					component_separators = "",
					section_separators = "",
				},
				sections = {
					lualine_x = { "encoding" },
					lualine_y = {}
				}
			}
		end
	}
}
