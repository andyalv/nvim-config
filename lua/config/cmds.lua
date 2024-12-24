-- [[ Custom Commands]]
vim.api.nvim_create_user_command("BG", function(opts)
	if opts.args == "light" then
		vim.cmd("set background=light")
	elseif opts.args == "dark" then
		vim.cmd("set background=dark")
	else
		print("Usage: :BG { light | dark }")
	end
end, {
	nargs = 1,
	complete = function()
		return { "light", "dark" }
	end,
})

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
