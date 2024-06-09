-- Ident python with 4 spaces
vim.api.nvim_create_autocmd("FileType",  {
  command = [[ :set tabstop=4 :set smarttab :set shiftwidth=4 :set softtabstop=4 :set expandtab :set autoindent :set tw=79 ]],
  pattern = {"py"}
  }
)

-- Auto start shell script header
vim.api.nvim_create_autocmd("BufNewFile", {
  command = [[:call append(0, '#!/usr/bin/env sh')]],
  pattern= {"sh"}
})


