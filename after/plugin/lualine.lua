local lualine = require('lualine')

local function get_lsp_name()
	local msg = "LS Inactive"
	local buf_clients = vim.lsp.get_active_clients()
	if next(buf_clients) == nil then
		if type(msg) == "boolean" or #msg == 0 then
			return "LS Inactive"
		end
	end
	local buf_client_names = {}

	for _, client in pairs(buf_clients) do
		table.insert(buf_client_names, client.name)
	end

	local unique_client_names = vim.fn.uniq(buf_client_names)

	local language_servers = "[" .. table.concat(unique_client_names, ", ") .. "]"

	return language_servers
end

lualine.setup {
	options = {
		theme = 'auto',
		icon_enabled = true,
	},
	sections = {
		lualine_x = {
			{ get_lsp_name },
			'selectioncount',
			'filetype'
		},
	}
}
