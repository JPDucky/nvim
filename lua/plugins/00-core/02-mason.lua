return {
  'williamboman/mason.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
  },
  config = function()
    require('mason').setup({
      max_concurrent_installers = 4,
      ui = {
        check_outdated_packages_on_open = true,
        border = none,
        backdrop = 69,
        width = 0.75,
        height = 0.8,
      },
    })
  end,
}
