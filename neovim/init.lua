--Start lazy.nvim
require("config.lazy")

--Configuration
	--UI
		vim.opt.number = true
		vim.opt.cursorline = true
		vim.opt.signcolumn = "yes"
		vim.opt.scrolloff = 8
		vim.opt.sidescrolloff = 8
		vim.opt.termguicolors = true
	--Indentation and stuff
		vim.opt.expandtab = true
		vim.opt.tabstop = 2
		vim.opt.shiftwidth = 2
		vim.opt.smartindent = true

	--Search stuff
		vim.opt.ignorecase = true
		vim.opt.smartcase = true
		vim.opt.hlsearch = true

	--Other random stuff
		vim.opt.clipboard = "unnamedplus"
		vim.opt.splitbelow = true
		vim.opt.splitright = true
		vim.opt.undofile = true
		vim.opt.swapfile = false
		vim.opt.updatetime = 250
