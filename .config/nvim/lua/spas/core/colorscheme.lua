-- set colorscheme to MY_COLORSCHEME with protected call
-- in case it isn't installed
-- local status, _ = pcall(vim.cmd, "colorscheme nightfly")
local status, _ = pcall(vim.cmd, "colorscheme tokyonight-moon")
if not status then
	print("Colorscheme not found!") -- print error if colorscheme not installed
	return
end
