return {
	{
		"aserowy/tmux.nvim",
		cond = function()
			-- Only load tmux.nvim inside a real tmux session. Lazy's `cond` keeps the
			-- plugin installed/locked, but skips loading it when the environment does
			-- not support its pane navigation, resize, and clipboard integrations.
			return vim.env.TMUX ~= nil and vim.fn.executable("tmux") == 1
		end,
		config = function()
			require("tmux").setup()
		end,
	},
}
