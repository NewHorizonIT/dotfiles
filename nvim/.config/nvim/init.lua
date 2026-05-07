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
			{ out, "WarningMsg" },
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
	require("plugins.nord"),
	require("plugins.mason"),
	require("plugins.autopairs"),
	require("plugins.neo-tree"),
	require("plugins.lsp-config"),
	require("plugins.telescope"),
	require("plugins.neoscroll"),
	require("plugins.none-ls"),
	require("plugins.treesitter"),
	require("plugins.completions"),
	require("plugins.nvim-lint"),
	require("plugins.ident-blankline"),
	require("plugins.formatting"),
	require("plugins.bufferline"),
	require("plugins.lualine"),
	require("plugins.snacks"),
	require("plugins.tailwind-tool"),
	require("plugins.trouble"),
	require("plugins.tmux-navigator"),
	require("plugins.noice"),
	require("plugins.smear-cursor"),
	require("plugins.which-key"),
	require("plugins.toggleterm"),
})
