-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "<C-\\>", "<C-W>", { desc = "Delete previous word" })
vim.keymap.set("n", "<C-\\>", "a<C-W><Esc>", { desc = "Delete previous word" })
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" })

vim.keymap.set("i", "lkj", "<Esc>", { desc = "Go to Insert Mode #1" })
vim.keymap.set("n", "lkj", "i", { desc = "Go to Insert Mode #1" })
vim.keymap.set("i", "KJ", "<Esc>", { desc = "Go to Insert Mode #2" })
vim.keymap.set("n", "KJ", "i", { desc = "Go to Insert Mode #2" })
vim.keymap.set("i", "LKJ", "<Esc>", { desc = "Go to Insert Mode #3" })
vim.keymap.set("n", "lkj", "i", { desc = "go to insert mode #3" })
vim.keymap.set("i", "JJ", "<Esc>", { desc = "Go to Insert Mode #4" })
vim.keymap.set("n", "JJ", "i", { desc = "go to insert mode #4" })
vim.keymap.set("i", "KK", "<Esc>", { desc = "Go to Insert Mode #5" })
vim.keymap.set("n", "KK", "i", { desc = "go to insert mode #5" })

vim.keymap.set("n", "U", "<C-r>", { desc = "Redo" })

vim.keymap.set("n", "j", "jzz", { desc = "Cursor at the middle of the screen while pressing j" })
vim.keymap.set("n", "k", "kzz", { desc = "Cursor at the middle of the screen while pressing k" })

vim.keymap.set("n", "[<leader>", "O<Esc>j", { desc = "Insert Empty Line Above" })
vim.keymap.set("n", "]<leader>", "o<Esc>k", { desc = "Insert Empty Line Below" })

vim.keymap.set("n", "<A-h>", ":%:s/", { desc = "Search and Replace Shortcut" })

vim.keymap.set("n", "<leader>d", '"_dd', { desc = "Delete without adding to buffer" })
vim.keymap.set("n", "<leader>p", [["_dP]], { desc = "Paste without overwriting register" })

vim.keymap.set("n", "<A-L>", "<C-w><lt><C-w><lt><C-w><lt>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<A-H>", "<C-w>><C-w>><C-w>>", { desc = "Increase Window Width" })

vim.keymap.set("n", "<A-K>", "<C-w>-<C-w>-<C-w>-", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<A-J>", "<C-w>+<C-w>+<C-w>+", { desc = "Increase Window Width" })

vim.keymap.set("n", "<leader>r", ":SnipRun<CR>", { desc = "Run the Code (SnipRun)" })
vim.keymap.set("v", "<leader>r", ":'<,'>SnipRun<CR>", { desc = "Run the Code (SnipRun)" })
