return {
	{ -- Highlight comments TODO, WARNING, FIX, NOTE, PERF, HACK
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
	{ -- UI messages, cmdline and popupmenu
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		},

		-- NOTE: It is needed to set a view type for the 'recording @' msg
		config = function()
			local noice = require("noice")
			noice.setup({
				routes = {
					{
						view = "cmdline",
						filter = { event = "msg_showmode" },
					},
				},
			})
		end,
	},
	{ -- Add indentation guides even on blank lines
		"lukas-reineke/indent-blankline.nvim",
		-- Enable `lukas-reineke/indent-blankline.nvim`
		-- See `:help ibl`
		main = "ibl",
		opts = {},
	},
	{ -- A fancy notification manager
		"rcarriga/nvim-notify",
		config = function()
			require("notify.config").setup({
				render = "compact",
				timeout = 1000,
			})
		end,
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	{
		"sphamba/smear-cursor.nvim",
		opts = {
			-- Smear cursor color. Defaults to Cursor GUI color if not set.
			-- Set to "none" to match the text color at the target cursor position.
			cursor_color = "#fb8826",
		},
	},
}
