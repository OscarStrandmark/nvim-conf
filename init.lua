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

-- Keymaps

vim.keymap.set('n', '<leader>tt', ':NvimTreeToggle<CR>', { desc = "Toggle file-tree" })

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
