function UpdateColors(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
end

UpdateColors()
