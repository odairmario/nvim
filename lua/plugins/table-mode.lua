return {
  'dhruvasagar/vim-table-mode',
  config = function()
    vim.api.nvim_create_autocmd("FileType", {
      command = [[:silent :TableModeEnable]],
      pattern = { "md", "markdown", "text"}
    }
  )
  end
}
