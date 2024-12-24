return { -- Lets you use tmux motions for going through panes, including tmux panes
	{
		"aserowy/tmux.nvim",
		config = function()
			return require("tmux").setup()
		end,
	},
}
