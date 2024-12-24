-- WARNING: This plugin relies on latexmk, latexrun, tectonic or arara
-- for compiling it also has support for several PDF viewers for foward
-- search.
return {
	{
		"lervag/vimtex",
		lazy = false,
		init = function()
			-- NOTE: Configuration for using SumatraPDF on Windows
			-- through WSL.
			vim.g.vimtex_view_general_viewer = "sumatrapdf.sh"
			vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"
			vim.g.vimtex_compiler_method = "latexmk"
		end,
	},
}
