return {
  'm4xshen/autoclose.nvim',
  config = function()
    local config = require("autoclose").setup({
      close = true,
      escape = true,
      pair = true,
    })

  end
}
