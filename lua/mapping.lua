local map = vim.api.nvim_set_keymap
local options = { noremap = true }
vim.g.mapleader = " "
map("i", "jj", "<Esc>", options)
