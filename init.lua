require("colorscheme")
require("search")
require("colorize")
require("tree")
require("statusline")
require("lsp")
require("terminal")
require("signcolumn")
require("dot").setup()

vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.smartindent = false
vim.o.splitbelow = true
vim.o.splitright = true
vim.wo.wrap = false

vim.g.mapleader = " "
