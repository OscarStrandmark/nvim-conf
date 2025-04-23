--Conform
vim.keymap.set({ "n", "v" }, "<leader>mp", function()
    require('conform').format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
    })
end, { desc = "Format file or range (in visual mode)" })

--Tree
vim.keymap.set('n', '<leader>tt', ':NvimTreeToggle<CR>', { desc = "Toggle file-tree" })
vim.keymap.set('n', '<leader>tcf', ':NvimTreeFindFile<CR>', { desc = "Toggle file-tree" })

--Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
