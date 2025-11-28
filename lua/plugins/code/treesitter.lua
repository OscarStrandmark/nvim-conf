return {
    "nvim-treesitter/nvim-treesitter",
    event = "BufEnter",
    build = function()
        require("nvim-treesitter.install").update({
            with_sync = true
        })
    end,
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "java", "lua", "vim", "vimdoc", "javascript", "html", "typescript", "css" , "xml", "vue" },
            auto_install = true,
            ignore_install = { "" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
            rainbow = { enable = true, extended_mode = true }
        })
    end,
}
