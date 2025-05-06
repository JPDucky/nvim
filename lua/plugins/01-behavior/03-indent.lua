return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
    config = function ()
      require('ibl').setup()
    end,
  },
  {
    'echasnovski/mini.indentscope',
    config = function ()
      require('mini.indentscope').setup()
    end,
  }
}
