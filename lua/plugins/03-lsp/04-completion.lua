return {
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'neovim/nvim-lspconfig',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      {
        'L3MON4D3/LuaSnip',
        tag = 'v2.3.0',
        run = 'make install_jsregexp',
        dependencies = {
          'rafamadriz/friendly-snippets',
          -- ADD CONFIG FOR SNIPPETS HERE --
          },
      },
      'saadparwaiz1/cmp_luasnip',
      {
        'petertriho/cmp-git',
        dependencies = { 'hrsh7th/nvim-cmp' },
        opts = {},
        init = function ()
          table.insert(require('cmp').get_config().sources, { name = 'git' })
        end,
      }
    },
    config = function ()
      local cmp = require('cmp')
      local luasnip = require('luasnip')
      require('luasnip.loaders.from_vscode')
      luasnip.config.setup({})

      cmp.setup({
        revision = 1,
        enabled = true,
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = {},
        sources = cmp.config.sources(
          {
            { name = 'nvim_lsp' },
            { name = 'luasnip' },
          }, 
          {
            { name = 'buffer' },
          })
      })

      cmp.setup.filetype('gitcommit', {
        sources = cmp.config.sources({
          { name = 'git' },
        }, {
            { name = 'buffer' },
          })
      })
      require('cmp_git').setup()
      cmp.setup.cmdline({ '/', '?' }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = 'buffer' }
        }
      })
      cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = 'path' }
        }, {
            { name = 'cmdline' }
          }),
        matching = { disallow_symbol_nonprefix_matching = false }
      })

      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      -- ADD FOR EACH LSP SERVER ENABLED ==
      require('lspconfig')['<srvr>'].setup({
        capabilities = capabilities
      })
    end,
  }
}
