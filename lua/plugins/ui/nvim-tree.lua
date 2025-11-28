return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    keys = {
        { '<leader>tt',  '<cmd>:NvimTreeToggle<CR>',   desc = "Toggle file-tree" },
        { '<leader>tcf', '<cmd>:NvimTreeFindFile<CR>', desc = "Navigate to file in tree" }
    },
    config = function()
        require("nvim-tree").setup({
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 30,
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = true,
            },
        })
    end
}
