vim.g.NERDSpaceDelims = 1
vim.keymap.set("n", "<C-z>", ':call nerdcommenter#Comment(0, "toggle")<CR>', {noremap = true})
vim.keymap.set("v", "<C-z>", ':call nerdcommenter#Comment(0, "toggle")<CR>', {noremap = true})

