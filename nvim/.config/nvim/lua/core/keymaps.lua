-- setup leader key
vim.g.mapleader = " "

local opts = { noremap = true, silent = true }

-- actions file
vim.keymap.set({ "n", "i" }, "<C-s>", "<cmd> w <CR>", opts)
vim.keymap.set({ "n", "i" }, "<C-q>", "<cmd> q <CR>", opts)
vim.keymap.set("n", "x", '"_x', opts)

-- slipt windown
vim.keymap.set("n", "<leader>v", "<C-w>v", opts)
vim.keymap.set("n", "<leader>sh", "<C-w>s", opts)
vim.keymap.set("n", "<leader>se", "<C-w>=", opts)
vim.keymap.set("n", "<leader>xs", ":close<CR>", opts)

-- rezise windown
vim.keymap.set("n", "<Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<Right>", ":vertical resize +2<CR>", opts)

-- Navigate between splits
vim.keymap.set("n", "gk", ":wincmd k<CR>", opts)
vim.keymap.set("n", "gj", ":wincmd j<CR>", opts)
vim.keymap.set("n", "gh", ":wincmd h<CR>", opts)
vim.keymap.set("n", "gl", ":wincmd l<CR>", opts)

-- Tabs
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", opts) -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", opts) -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>", opts) --  go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>", opts) --  go to previous tab

-- Move text up and down
vim.keymap.set({ "v", "i", "n" }, "<A-j>", ":m .+1<CR>==", opts)
vim.keymap.set({ "v", "i", "n" }, "<A-k>", ":m .-2<CR>==", opts)

-- Keep last yanked when pasting
vim.keymap.set("v", "p", '"_dP', opts)

-- Press jk fast to exit insert mode
vim.keymap.set("i", "jk", "<ESC>", opts)
vim.keymap.set("i", "kj", "<ESC>", opts)

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Replace word under cursor
vim.keymap.set("n", "<leader>j", "*``cgn", opts)

-- Explicitly yank to system clipboard (highlighted and entire row)
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Ctrl+z = undo
vim.keymap.set("n", "<C-z>", "u", opts)

-- Ctrl+Shift+z = redo
vim.keymap.set("n", "<C-S-z>", "<C-r>", opts)

-- Copy (Ctrl+C) - copy 1 dòng trong Normal mode
vim.keymap.set("n", "<C-c>", "yy", { desc = "Copy line" })

-- Copy (Ctrl+C) - copy vùng chọn trong Visual mode
vim.keymap.set("v", "<C-c>", "y", { desc = "Copy selection" })

-- Paste (Ctrl+V) trong Normal/Visual mode
vim.keymap.set({ "n", "v" }, "<C-v>", "p", { desc = "Paste" })
