return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        { '<leader>ff', '<cmd>:Telescope find_files<CR>', desc = "Telescope: Find Files" },
        { '<leader>fg', '<cmd>:Telescope live_grep<CR>',  desc = "Telescope: Live Grep" },
        { '<leader>fb', '<cmd>:Telescope buffers<CR>',    desc = "Telescope: Buffers" },
        { '<leader>fh', '<cmd>:Telescope help_tags<CR>',  desc = "Telescope: Help tags" }
    },
    opts = {
        defaults = {
            layout_strategy='vertical',
            layout_config = {
                vertical = {
                    width = 0.99
                },
                horizontal = {
                    width = 0.99
                },
            },
            path_display = {
                "truncate"
            }
        }
    }
}
