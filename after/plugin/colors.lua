function ColorMyPencils(color)
	color = color or "vscode"
	vim.cmd.colorscheme(color)
end

vim.g.edge_style = 'neon'

require('onedark').setup {
	style = 'deep'
}

ColorMyPencils('nightfox')
