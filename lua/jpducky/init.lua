require("jpducky.remap")
require("jpducky.set")

local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local packer_exists = vim.fn.empty(vim.fn.glob(install_path)) == 0

if not packer_exists then
    vim.api.nvim_echo({{'Installing packer.nvim', 'Type'}}, true, {})
    vim.fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.api.nvim_command('packadd packer.nvim')

    -- run packersync to install
    vim.api.nvim_command('PackerSync')
end

vim.api.nvim_exec(
    [[
    augroup Packer
        autocmd!
        autocmd BufWritePost init.lua PackerCompile
    augroup end
    ]],
    false
)

require('jpducky.packer')
