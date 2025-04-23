vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("config.lazy")

vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

require("notify").setup({
    background_colour = "#000000",
    merge_duplicates = true
})

vim.cmd("set number")

vim.opt.termguicolors = true
vim.o.background = "dark"

require('keymaps')
