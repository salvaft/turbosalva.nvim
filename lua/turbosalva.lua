local api = vim.api
local fn = vim.fn
local function insert_wrapped_word()
	-- Get the word under the cursor
	local word = fn.expand("<cword>")

	-- Get the name of the current buffer file with only the filename and extension
	local file = fn.fnamemodify(fn.expand("%"), ":t")
	-- Get the line number of the current cursor position
	local line = api.nvim_win_get_cursor(0)[1]
	-- Determine the file type
	local filetype = vim.bo.filetype
	-- Create the wrapped word based on the file type
	local wrapped_word

	if filetype == "javascript" then
		wrapped_word = string.format("console.log('[%s] LN: %s', %s)", file, line, word)
	elseif filetype == "python" then
		wrapped_word = string.format("print('[%s] LN: %s', %s)", file, line, word)
	elseif filetype == "lua" then
		wrapped_word = string.format("print('[%s] LN: %s', %s)", file, line, word)
	elseif filetype == "rust" then
		wrapped_word = string.format("dbg!(%s);", word)
	else
		-- Default case
		print("Unknown file type")
		return
	end
	-- Insert the wrapped word on a new line after the cursor
	api.nvim_command("normal! o" .. wrapped_word)
	api.nvim_feedkeys(api.nvim_replace_termcodes("<Esc>", true, false, true), "n", true)
end
return {
	insert_wrapped_word = insert_wrapped_word,
}
