-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- Zoom splited window
keymap.set("n", "<leader>zi", "<c-w>|")
keymap.set("n", "<leader>zo", "<c-w>=")
