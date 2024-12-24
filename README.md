# dumpster.nvim
## Introduction
I first started using neovim on late 2024 as a *cool* way to edit code and since then I've come to love the editor. This is my personal Neovim configuration, it is mostly based of the the [kickstart](https://github.com/nvim-lua/kickstart.nvim) and still has a lot of its code since at the moment I don't have the knowledge or experience for seting everything up.

The main features of this config are:
- file explorer (`nvim-tree`)
- fuzzy finder (`telescope.nvim`)
- basic **LSP** setup with the `mason.nvim` manager
- snippets setup for serveral languages using `LuaSnip` and `cmp_luasnip` with a few extra from `friendly-snippets`
- navigation for working along side with tmux (`tmux.nvim`)
- code navigation, editing and highlight (`nvim-treesitter`)
- git signs and utilities (`gitsigns.nvim`)
- simple markdown render (`render-markdown.nvim`)
- compilation, snippets, motions and many other features for latex (`vimtex`)
- some utilities and QoL with `nvim-autopairs`, `conform.nvim`, `mini.nvim` and `vim-resize-mode`

> I am running nvim on [WSL](https://learn.microsoft.com/en-us/windows/wsl/install), so the setup for vimtex and some other configurations might be different from working on Linux.
