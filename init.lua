vim.g.mapleader = " "
vim.g.maplocalleader = ","
--
-- import standard config files --
require('config.core_config')
require('config.autocmds')
require('config.lazy')

vim.cmd('colorscheme onedark')
