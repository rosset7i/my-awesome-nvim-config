require('nvim-tree').setup {
	disable_netrw = true,
	hijack_netrw = true,
	renderer = {
		group_empty = true,
		highlight_git = true,
		special_files = { "bin", "debug" }

	},
	update_focused_file = {
		enable = true
	},
	filters = {
		dotfiles = false,
	},
	view = {
		number = true,
		relativenumber = true,
		width = 45,
	},
	diagnostics = {
		enable = true,
		show_on_dirs = true,
	},
	modified = {
		enable = true,
	},
	git = {
		enable = true,
		timeout = 700,
	},
	actions = {
		open_file = {
			resize_window = false,
		}
	}
}

vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)
vim.keymap.set('n', "<leader>tc", vim.cmd.NvimTreeCollapse)
vim.keymap.set('n', "<leader>tf", vim.cmd.NvimTreeFindFile)
