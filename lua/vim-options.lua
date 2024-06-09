-- Set indentention to two spaces for all general cases.
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.cmd("set number")
vim.cmd("set textwidth=100")
vim.cmd("set nowrap")


vim.api.nvim_create_autocmd("FileType",  {
  command = [[ :set tabstop=4 :set smarttab :set shiftwidth=4 :set softtabstop=4 :set expandtab :set autoindent :set tw=79 ]],
  pattern = {"py"}
  }
)


vim.cmd("set mouse=ci")

vim.keymap.set('n', '<F2>', ':noh<CR>') -- no highlight

vim.keymap.set('n', '<leader>y', '"*y')
vim.keymap.set('n', '<leader>p', '"*p')
vim.keymap.set('n', '<leader>Y', '"+y')
vim.keymap.set('n', '<leader>P', '"+p')

vim.keymap.set('n', '<C-Down>', 'ddp')
vim.keymap.set('n', '<C-Up>', 'ddkP')
vim.keymap.set('n', 'cc', 'diwi')


function SET_DIRECTORY(name, option_name, path)
  if (vim.fn.isdirectory(path)) then
    vim.cmd("set "..name)
    vim.cmd("set "..option_name.."="..path)
  end
end

SET_DIRECTORY("backup","backupdir","~/.nvim/backup/")
SET_DIRECTORY("undofile","undodir","~/.nvim/undo/")
SET_DIRECTORY("swapfile","directory","~/.nvim/swap/")
