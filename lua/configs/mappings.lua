vim.keymap.set('n', '<F2>', ':noh<CR>') -- no highlight
vim.keymap.set('n', '<leader>y', '"*y')
vim.keymap.set('n', '<leader>p', '"*p')
vim.keymap.set('n', '<leader>Y', '"+y')
vim.keymap.set('n', '<leader>P', '"+p')

vim.keymap.set('n', '<C-Down>', 'ddp')
vim.keymap.set('n', '<C-Up>', 'ddkP')
vim.keymap.set('n', 'cc', 'diwi')
