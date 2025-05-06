-- GENERAL --
local wk = require('which-key')

-- this feels most natural
vim.o.timeout = true
vim.o.timeoutlen = 550




return {
	-- quick yoink
	vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y', { desc = 'Yoink to System Clipboard' }),
	vim.keymap.set({ 'n', 'v' }, '<leader>P', '"+p', { desc = 'Plop from System Clipboard' }),
	-- PLACEHOLDER --
	wk.add({
		{
			"<leader>l",
			function()
				require('which-key').show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
		{
			'<leader>ll',
			function()
				require('lazy').show()
			end,
			desc = 'Lazy UI',
		},
		{
			'<leader>pv',
			':Ex<CR>',
			desc = 'Explorer',
		},
		{
			'<leader>y',
			'"+y',
			desc = 'yank to unnamedplus',
		},
	})
}
