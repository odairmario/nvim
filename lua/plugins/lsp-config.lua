return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "tsserver", "jedi_language_server", "pyre", "pyright", "pylsp", "ruff_lsp", "ansiblels", "clangd", "marksman", "prosemd_lsp", "remark_ls", "vale_ls", "zk"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.tsserver.setup({
        capabilities = capabilities
      })
      lspconfig.jedi_language_server.setup({
        capabilities = capabilities
      })
      lspconfig.pyright.setup({
        capabilities = capabilities,
        settings = {
          python = {
            analysis = {
              autoImportCompletion = true,
              autoSearchPaths = true,
              diagnosticMode = 'openFilesOnly',
              useLibraryCodeForTypes = true,
              typeCheckingMode = 'standard'
            }
          }
        }
      })
      lspconfig.pylsp.setup({
        settings = {
          pylsp = {
            plugins = {
                black = { enabled = true },
                autopep8 = { enabled = true},
                pylsp_mypy = { enabled = true },
                jedi_completion = { fuzzy = true },
                pyls_isort = { enabled = true },


              }
            }
        },
        capabilities = capabilities,

      })
      lspconfig.ruff_lsp.setup({
        capabilities = capabilities
      })
      lspconfig.ansiblels.setup({
        capabilities = capabilities
      })
      lspconfig.clangd.setup({
        capabilities = capabilities
      })
      lspconfig.marksman.setup({
        capabilities = capabilities
      })
      lspconfig.prosemd_lsp.setup({
        capabilities = capabilities
      })
      lspconfig.remark_ls.setup({
        capabilities = capabilities
      })
      lspconfig.vale_ls.setup({
        capabilities = capabilities
      })
      lspconfig.zk.setup({
        capabilities = capabilities
      })

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition,{})
      vim.keymap.set('n', 'gr', vim.lsp.buf.references,{})
      vim.keymap.set({'n','v'}, '<leader>ca', vim.lsp.buf.code_action,{})
    end
  }
}
