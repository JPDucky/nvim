require("jpducky.remap")
require("jpducky.set")

local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local packer_exists = vim.fn.empty(vim.fn.glob(install_path)) == 0

if not packer_exists then
	vim.api.nvim_echo({ { 'Installing packer.nvim', 'Type' } }, true, {})
	vim.fn.system({ 'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path })
	vim.api.nvim_command('packadd packer.nvim')

	-- run packersync to install
	vim.api.nvim_command('PackerSync')
end

local needs_packer_sync = vim.fn.glob(vim.fn.stdpath('config') .. '/.needs_packer_sync')
if needs_packer_sync ~= '' then
	vim.api.nvim_echo({ { 'Running PackerSync', 'Type' } }, true, {})
	vim.api.nvim_command('PackerSync')
	vim.fn.system({ 'rm', vim.fn.stdpath('config') .. '/.needs_packer_sync' })
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

local copilot_on = true
vim.api.nvim_create_user_command("CopilotToggle", function()
	if copilot_on then
		vim.cmd("Copilot disable")
		print("Copilot OFF")
	else
		vim.cmd("Copilot enable")
		print("Copilot ON")
	end
	copilot_on = not copilot_on
end, { nargs = 0 })
vim.keymap.set("n", "<leader>c", ":CopilotToggle<CR>", { noremap = true, silent = true })
