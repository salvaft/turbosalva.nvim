-- In your Neovim configuration file (init.lua)
-- local function reload_plugin()
-- 	-- Unload the plugin module
-- 	-- package.loaded["turbosalva"] = nil
-- 	-- Require and load the updated version of the plugin
-- 	local p = require("user.plugins.turbosalva")
-- 	print(p)
-- 	p = nil
-- 	print(p)
-- 	require("user.plugins.turbosalva")
-- 	print(p)
-- 	-- Optional: Trigger any necessary setup functions from the plugin
-- 	-- plugin.setup()
-- 	print("reloaded turbosalva")
-- end

-- Automatically reload the plugin after saving the file
-- vim.cmd([[autocmd BufWritePost turbosalva.lua lua require("user/plugins/turbosalva").reload()]])
print("lua folder hello.lua")
print("lua folder hello.lua")
print("lua folder hello.lua")

-- -- local setup = require("lua/setup")
-- local api = vim.api
-- local fn = vim.fn

local function hello()
  print("hello world")
end

-- local function insert_wrapped_word()
-- 	-- Get the word under the cursor
-- 	local word = fn.expand("<cword>")

-- 	-- Get the name of the current buffer file with only the filename and extension
-- 	local file = fn.fnamemodify(fn.expand("%"), ":t")
-- 	-- Get the line number of the current cursor position
-- 	local line = api.nvim_win_get_cursor(0)[1]

-- 	-- Create the wrapped word with filename, line number, and the word itself
-- 	local wrapped_word = string.format("console.log('[%s] LN: %s', %s)", file, line, word)

-- 	-- Insert the wrapped word on a new line after the cursor
-- 	api.nvim_command("normal! o" .. wrapped_word)
-- 	api.nvim_feedkeys(api.nvim_replace_termcodes("<Esc>", true, false, true), "n", true)
-- end
-- vim.cmd("command! TurboSalva lua require('turbosalva').insert_wrapped_word()")
return hello
-- return {
-- 	insert_wrapped_word = insert_wrapped_word,
-- 	-- setup = setup,
-- }
