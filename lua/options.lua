local opt = vim.opt -- for conciseness


-- Line numbers
opt.relativenumber = true
opt.number = true

-- Tabs and indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- Disable line wrapping
opt.wrap = false

-- Search
opt.ignorecase = true
opt.smartcase = true


-- Styling 
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"


-- Backspace behavior
-- Delete indents, delete char at eol, move to prev line at line start 
opt.backspace = "indent,eol,start"

-- Window splitting
opt.splitright = true
opt.splitbelow = true

-- Use system clipboard by default
opt.clipboard:append("unnamedplus")

-- Make the which-key popup less eye melty
--vim.api.nvim_set_hl(0, 'FloatBorder', {bg='#3B4252', fg='#5E81AC'})
--vim.api.nvim_set_hl(0, 'NormalFloat', {bg='#3B4252'})
--vim.api.nvim_set_hl(0, 'TelescopeNormal', {bg='#3B4252'})
--vim.api.nvim_set_hl(0, 'TelescopeBorder', {bg='#3B4252'})
