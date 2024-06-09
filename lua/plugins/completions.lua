return {
  {
    "hrsh7th/cmp-nvim-lsp"
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
    {
      'SirVer/ultisnips',
      dependencies = {
        "quangnguyen30192/cmp-nvim-ultisnips",
        "honza/vim-snippets"
      },
      config = function()
        vim.g.ultisnips_python_style = 'sphinx' -- use sphinx docstyle
      end
    },
    {
      'andersevenrud/cmp-tmux', -- cmp-tmux
    }
  },
  {
    'hrsh7th/cmp-buffer'
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")
      --require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
            vim.fn["ultisnips#Anon"](args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = "buffer",
            option = {
              get_bufnrs = function()
                return vim.api.nvim_list_bufs()
              end
            }},
          { name = "nvim_lsp" },
          --{ name = "luasnip" }, -- For luasnip users.
          { name = "ultisnips" }, -- For ultisnips users.
          { name = "tmux",
            option = {
              label = '[tmux]',
              trigger_characters = {},

            }
          },
        }),
      })
    end
  }
}
