-- file explorer/handler
return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require("telescope.builtin") -- enable telescope
      vim.keymap.set('n', '<C-p>', builtin.find_files, {}) -- explore file with Ctrl-p
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {}) -- grep -r with space+fg
    end

  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  }
}
