local M = {}
local function setup()
	print("Setting up TurboSalva")
	-- Automatically reload the plugin after saving the file
	local group = vim.api.nvim_create_augroup("reload_turbosalva", { clear = true })
	vim.api.nvim_create_autocmd(
		"BufWritePost",
		{ pattern = "turbosalva.lua", callback = require("reload").reload_plugin, group = group }
	)
	-- vim.cmd([[autocmd BufWritePost turbosalva.lua lua require("reload").reload_plugin()]])
	vim.cmd("command! TurboSalva lua require('turbosalva').insert_wrapped_word()")
end

M.setup = setup
return M
