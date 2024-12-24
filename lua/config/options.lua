-- Gui colors
vim.opt.termguicolors = true

-- Make line numbers and relative numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse mode
vim.opt.mouse = "a"

-- Don't show the mode, since it's already in the status line due to themes
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

-- Enable break indent
vim.opt.breakindent = true

-- Enable line wrapping
vim.opt.wrap = true

-- Enable linebreak for wrapping at characters
vim.opt.linebreak = true

-- Set the number of spaces inserted for each indentation
vim.showbreak = "↪"

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Enable signcolumn by default
vim.opt.signcolumn = "auto"

-- Decrease update time
vim.opt.updatetime = 250

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
--  NOTE: I've personally find annoying to keep the list chars on all the time
--  so I've made a shortcut for enabling it when needed '<leader>k'
vim.opt.list = false
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 5

-- Add timeout length so that mini.surround works, by default, kickstart decrease it
-- to make which plugin act sooner
vim.o.timeoutlen = 2000

-- Set the tab width
vim.opt.tabstop = 2 -- No. of spaces that represent a tab
vim.opt.shiftwidth = 2 -- No. of spaces when identing
