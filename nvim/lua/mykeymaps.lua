vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.o.number = true
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })
vim.o.timeout = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "j", "jzz", { noremap = true, silent = true })
vim.keymap.set("n", "k", "kzz", { noremap = true, silent = true })

vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.keymap.set("n", "%", "%zz", { noremap = true, silent = true })
