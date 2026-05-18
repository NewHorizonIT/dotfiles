return {
    {
        "williamboman/mason.nvim",
        -- version = "v1.11.0",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            auto_install = true,
            -- manually install packages that do not exist in this list please
            ensure_installed = { "lua_ls", "zls", "gopls", "ts_ls" },
        },
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            vim.lsp.config['lua_ls'] = {
                cmd = { 'lua-language-server' },
                filetypes = { 'lua' },
                root_markers = { '.luarc.json', '.git' },
                settings = { Lua = { diagnostics = { globals = { "vim" } } } }
            }

            vim.lsp.config['gopls'] = {
                cmd = { 'gopls' },
                filetypes = { 'go', 'gomod' },
                root_markers = { 'go.mod', '.git' },
            }
            vim.lsp.enable('lua_ls')
            vim.lsp.enable('gopls')
            vim.lsp.enable('ts_ls')
        end,
    },
}