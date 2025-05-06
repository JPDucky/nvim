return {
  'neovim/nvim-lspconfig',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason.nvim',
    'hrsh7TH/cmp-nvim-lsp',
  },
  config = function ()
    local lspconfig = require('lspconfig')
    local mason_lspconfig = require('mason-lspconfig')
    local cmp_nvim_lsp = require('cmp_nvim_lsp')

    local on_attach = function(client, bufnr)
    end

    local capabilities = cmp_nvim_lsp.default_capabilities()

    mason_lspconfig.setup({})

    mason_lspconfig.setup_handlers({

    })
  end
}
