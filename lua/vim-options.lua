-- Set indentention to two spaces for all general cases.
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.cmd("set number")
vim.cmd("set textwidth=100")

vim.cmd("set mouse=ci")

vim.keymap.set('n', '<F2>', ':noh<CR>') -- no highlight

vim.keymap.set('n', '<leader>y', '"*y')
vim.keymap.set('n', '<leader>p', '"*p')
vim.keymap.set('n', '<leader>Y', '"+y')
vim.keymap.set('n', '<leader>P', '"+p')
