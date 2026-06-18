return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter").setup()
        local ensure = {
            "java", "lua", "vim", "vimdoc", "javascript",
            "html", "typescript", "css", "xml", "vue",
        }
        if vim.fn.executable("tree-sitter") == 1 then
            require("nvim-treesitter").install(ensure)
        end
        vim.api.nvim_create_autocmd("FileType", {
            callback = function(args)
                if pcall(vim.treesitter.start) then
                    vim.bo[args.buf].indentexpr =
                        "v:lua.require'nvim-treesitter'.indentexpr()"
                end
            end,
        })
    end,
}
