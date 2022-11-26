local opt = vim.opt -- shorthand for conciseness

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- make backspace work properly
opt.backspace = "indent,eol,start"

-- use system clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- will make - not to be a word separator
opt.iskeyword:append("-")

-- all important schrolloff near the top and bottom
opt.scrolloff = 8

-- converts tabs to spaces
opt.smarttab = true

-- we don't need to see -- INSERT -- anymore
opt.showmode = false

-- more space for seeing messages
-- opt.cmdheight = 2

-- try formatting on save
-- vim.cmd [autocmd BufWritePre *.go lua vim.lsp.buf.formatting()]
