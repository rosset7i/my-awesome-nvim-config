local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

local name = { "Rossetti's NVIM" }

dashboard.section.header.val = name

dashboard.section.buttons.val = {
	dashboard.button('n', "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button('f', " Find file", "<leader>sf"),
	dashboard.button('r', " Recently opened files", "<leader>so"),
	dashboard.button('p', " Recently opened projects", "<leader>sP"),
	dashboard.button('t', " Find text", "<leader>sg"),
	dashboard.button('q', " Quit", ":qa<CR>")
}

dashboard.section.footer.val = "Matheus Rossetti"

alpha.setup(dashboard.config)

vim.keymap.set('n', '<leader>;', ":Alpha<CR>", { desc = "Toggle Alpha", silent = true })
alpha.setup(dashboard.config)

vim.keymap.set('n', '<leader>;', ":Alpha<CR>", { desc = "Toggle Alpha", silent = true })
