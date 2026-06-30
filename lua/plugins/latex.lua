-- WARNING: vimtex needs a TeX compiler such as latexmk, latexrun, tectonic or arara.
return {
	{
		"lervag/vimtex",
		lazy = false,
		init = function()
			vim.g.vimtex_compiler_method = "latexmk"

			local is_windows = vim.fn.has("win32") == 1
			local is_wsl = vim.fn.has("wsl") == 1 or vim.env.WSL_DISTRO_NAME ~= nil or vim.env.WSL_INTEROP ~= nil

			-- VimTeX can drive SumatraPDF in both native Windows Neovim and WSL, but
			-- those environments need different entrypoints. Native Windows can call
			-- SumatraPDF.exe directly; WSL should use a wrapper that converts Linux
			-- paths to Windows paths before launching the Windows PDF viewer.
			local viewer
			if is_windows then
				viewer = "C:\\Progra~1\\SumatraPDF\\SumatraPDF.exe"

				if vim.fn.executable(viewer) == 0 then
					viewer = "SumatraPDF.exe"
				end
			elseif is_wsl then
				viewer = vim.fn.expand("~/.local/bin/sumatrapdf.sh")
			end

			-- Only force the viewer when the expected executable exists. This keeps the
			-- config portable: non-Windows systems, or machines without SumatraPDF/the
			-- WSL wrapper, can still rely on VimTeX defaults instead of a broken path.
			if viewer ~= nil and vim.fn.executable(viewer) == 1 then
				vim.g.vimtex_view_method = "general"
				vim.g.vimtex_view_general_viewer = viewer
				vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"
			end
		end,
	},
}
