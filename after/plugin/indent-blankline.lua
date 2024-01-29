require('ibl').setup {
	indent = {
		char = "▏"
	},
	exclude = {
		filetypes = {
			"help",
			"startify",
			"dashboard",
			"lazy",
			"neogitstatus",
			"NvimTree",
			"Trouble",
			"text",
		},
		buftypes = {
			"terminal",
			"nofile"
		}
	}
}
