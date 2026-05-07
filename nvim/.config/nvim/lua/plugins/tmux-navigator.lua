return {
	"christoomey/vim-tmux-navigator",
	config = function()
		vim.keymap.set('n', '<leader>h', ':TmuxNavigateLeft<CR>')
		vim.keymap.set('n', '<leader>j', ':TmuxNavigateDown<CR>')
		vim.keymap.set('n', '<leader>k', ':TmuxNavigateUp<CR>')
		vim.keymap.set('n', '<leader>l', ':TmuxNavigateRight<CR>')
	end,
}