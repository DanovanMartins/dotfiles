-- Set mapleader as space
vim.g.mapleader = " "

-- Move around splits using Ctrl + {h,j,k,l}
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Reload configuration without restart nvim
vim.keymap.set('n', '<leader>r', ':so %<CR>')

-- Fast saving with <leader> and s
vim.keymap.set('n', '<leader>s', ':w<CR>')

-- Close all windows and exit from Neovim with <leader> and q
vim.keymap.set('n', '<leader>q', ':qa<CR>')

-- Close buffer without killing splits
vim.keymap.set('n', '<leader>bd', ':bp|bd #')

-- Zoom splited window
vim.keymap.set('n', '<leader>zi', '<c-w>|')
vim.keymap.set('n', '<leader>zo', '<c-w>=')
