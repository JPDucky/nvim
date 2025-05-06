-- vim.opt || BUFFER-LOCAL/WINDOW-LOCAL/or GLOBAL options || replacement(lua) for `:set` --
vim.opt.scrolloff = 14
vim.opt.wrap = false
vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.showmode = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = 'yes'
vim.opt.inccommand = 'split'
vim.opt.cursorline = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.termguicolors = true

-- vim.o ||  GLOBAL_OPTIONS || no support for local (buffer/window) setting --

-- vim.g || GLOBAL_VARIABLES || manages global variables, often used for plugin configurations --
vim.g.mapleader = ' '
vim.g.maplocalleader = ','
vim.g.have_nerd_font = true
vim.g.netrw_keepdir = 0

-- vim.b || BUFFER-LOCAL VARIABLES || scoped to specific buffer --

-- vim.w || WINDOW-LOCAL VARIABLES || scoped to a specific window --

-- vim.t || TABPAGE-LOCAL VARIABLES || scoped to a specific tab --

-- vim.v || ACCESSESS PREDEFINED Vim VARIABLES || `vim.v.count` for count prefix in a mapping --

-- vim.env || INTERFACES WITH ENV VARS || `vim.env.PATH` to read the PATH variable --

