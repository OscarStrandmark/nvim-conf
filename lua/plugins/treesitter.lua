return {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({
		    with_sync = true
	    })
        end,
    config = function()
	    require("nvim-treesitter.configs").setup({
                ensure_installed = {"lua", "vim", "vimdoc", "javascript", "html", "typescript", "css" },
                auto_install = true,
		        ignore_install = {""},
                sync_install = false,
		        highlight = { enable = true },
		        indent = { enable = true }
	        }
        )
        end,
}
