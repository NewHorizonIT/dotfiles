-- pull lazy vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })({
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            cmdline = { enabled = true },
            messages = { enabled = true },
        },
        dependencies = { "MunifTanjim/nui.nvim" },
    })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out,                            "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- require module
require("core")
require("lazy").setup({
    require("plugins.theme"),
    require("plugins.mason"),
    require("plugins.lsp-config"),
    require("plugins.treesitter"),
    require("plugins.telescope"),
    require("plugins.toggleterm"),
    require("plugins.which-key"),
    require("plugins.trouble"),
    require("plugins.noice"),
    require("plugins.lualine"),
    require("plugins.nvim-lint"),
    require("plugins.formatting"),
    require("plugins.tmux-navigator"),
    require("plugins.flash"),
    require("plugins.harpoon"),
    require("plugins.gitsigns"),
    require("plugins.neotree"),
    require("plugins.completion"),
})
