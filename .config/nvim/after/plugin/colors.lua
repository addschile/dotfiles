function UpdateColors(color)
	color = color or "gruvbox"
	vim.cmd.colorscheme(color)
end

UpdateColors()
