return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
        defaults = {
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
