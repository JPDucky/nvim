return {
	{
		'akinsho/bufferline.nvim',
		enabled = true,
		version = "*",
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function ()
			require('bufferline').setup()
		end,
	},
	{
		'echasnovski/mini.bufremove',
		config = function ()
			require('mini.bufremove').setup()
		end,
	},
}
