local opt = vim.opt
opt.clipboard = "unnamedplus" -- Sync with system clipboard
opt.confirm = true
opt.cursorline = false-- Enable highlighting of the current line
opt.list = false -- Show some invisible characters (tabs...
opt.number = true -- Print line number
opt.shiftwidth = 2 -- Size of an indent
opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
opt.smartcase = true -- Don't ignore case with capitals
opt.smartindent = true -- Insert indents automatically
opt.spelllang = { "en" }
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current
opt.tabstop = 2 -- Number of spaces tabs count for
opt.undofile = true
opt.wildmode = "longest:full,full" -- Command-line completion mode
opt.termguicolors = false -- True color support
vim.o.background = "light"
vim.cmd('language en_US') -- Set Neovim language to English
vim.cmd('colorscheme solarized')



