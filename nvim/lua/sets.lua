local opt = vim.opt

-- General Settings
opt.number = true
opt.relativenumber = true
opt.mouse = 'a'

-- Indention Options
opt.tabstop = 4             -- indent using spaces.
opt.softtabstop = 4         -- backspace empty delete using spaces.
opt.shiftwidth = 4          -- When shifting, indent using four spaces.
opt.expandtab = true        -- convert tabs to spaces.
opt.smartindent = true      -- indent according syntax style.
opt.wrap = false

-- Hidden Files Options
opt.swapfile = false        -- does not allow creation of swp file.
opt.backup = false          -- does not allow creation of bkp file.

-- Enable undo after closing files
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

-- Searching Options
opt.hlsearch = false        -- remove highlight in search case.
opt.incsearch = true        -- add incremental search

-- Performance Options
--opt.lazyredraw = true

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.updatetime = 50
opt.colorcolumn = "100"

vim.cmd [[colorscheme tokyonight ]]
