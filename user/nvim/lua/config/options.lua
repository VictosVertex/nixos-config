-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Turn off line wrap
vim.opt.wrap = false

-- Orientation
vim.opt.cursorline = true
vim.opt.colorcolumn = "80"

-- Tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Activate full color spectrum
vim.opt.termguicolors = true

-- Always show sign column (on the left)
vim.opt.signcolumn = "yes"

-- Save undo history
vim.opt.undofile = true

-- Search
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Timings
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Whitespace
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
