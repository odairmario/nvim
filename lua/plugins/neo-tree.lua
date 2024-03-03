-- The new NERDTREE
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim"
  },
  config = function() 
    vim.keymap.set('n', '<F1>', ':Neotree filesystem reveal left<CR>') 
  end

}
