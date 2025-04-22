require("config.lazy")

require("nvim-tree").setup({
		sort = { 
			sorter = "case_sensitive" 
		},
		view = {
			width = 30
		},
		filters = { custom = { "^.git$" } }
})

vim.opt.termguicolors = true
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

require('keymaps')
