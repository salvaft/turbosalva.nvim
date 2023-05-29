local M = {}
local function reload_plugin()
	-- Unload the plugin module
	package.loaded["turbosalva"] = nil
	-- Require and load the updated version of the plugin
	require("turbosalva")
	print("TurboSalva reloaded")
end

M.reload_plugin = reload_plugin

return M
