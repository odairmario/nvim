-- General settings
vim.cmd([[ set encoding=utf8  ]])
vim.cmd([[ set number         ]])
vim.cmd([[ set expandtab      ]])
vim.cmd([[ set tabstop=2      ]])
vim.cmd([[ set softtabstop=2  ]])
vim.cmd([[ set shiftwidth=2   ]])
vim.cmd([[ set textwidth=100  ]])
vim.cmd([[ set nowrap         ]])
vim.cmd([[ set mouse=ci       ]])
vim.cmd([[ syntax on          ]])


vim.g.mapleader = " "







function SET_DIRECTORY(name, option_name, path)
  if (vim.fn.isdirectory(path)) then
    vim.cmd("set "..name)
    vim.cmd("set "..option_name.."="..path)
  end
end

SET_DIRECTORY("backup","backupdir","~/.nvim/backup/")
SET_DIRECTORY("undofile","undodir","~/.nvim/undo/")
SET_DIRECTORY("swapfile","directory","~/.nvim/swap/")
