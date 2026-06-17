return {
    "neovim/nvim-lspconfig", -- REQUIRED: for native Neovim LSP integration
    lazy = false, -- REQUIRED: tell lazy.nvim to start this plugin at startup
    dependencies = {
        -- main one
        { "ms-jpq/coq_nvim", branch = "coq" },

        -- 9000+ Snippets
        { "ms-jpq/coq.artifacts", branch = "artifacts" },

        -- lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
        -- Need to **configure separately**
        { 'ms-jpq/coq.thirdparty', branch = "3p" }
        -- - shell repl
        -- - nvim lua api
        -- - scientific calculator
        -- - comment banner
        -- - etc
    },
    init = function()
        -- Setting vim.g.coq_settings is enough to auto-start COQ in v2.
        vim.g.coq_settings = {
            -- Your COQ settings here
        }
    end,
    -- No `config` needed in v2: lsp_ensure_capabilities is a no-op now, and
    -- Neovim 0.12's vim.lsp.protocol.make_client_capabilities() covers what
    -- v1 used to inject.
}