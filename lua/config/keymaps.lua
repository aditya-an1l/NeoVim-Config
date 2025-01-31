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
vim.keymap.set("i", "LKJ", "<Esc>", { desc = "Go to Insert Mode #1" })
vim.keymap.set("n", "LKJ", "i", { desc = "Go to Insert Mode #1" })

vim.keymap.set("n", "U", "<C-r>", { desc = "Redo" })

vim.keymap.set("n", "j", "jzz", { desc = "Cursor at the middle of the screen while pressing j" })
vim.keymap.set("n", "k", "kzz", { desc = "Cursor at the middle of the screen while pressing k" })

vim.keymap.set("n", "[<leader>", "O<Esc>j", { desc = "Insert Empty Line Above" })
vim.keymap.set("n", "]<leader>", "o<Esc>k", { desc = "Insert Empty Line Below" })

vim.keymap.set("n", "<A-h>", ":%:s/", { desc = "Search and Replace Shortcut" })

vim.keymap.set("n", "<leader>e", function()
  require("neo-tree.command").execute({
    toggle = true,
    source = "filesystem",
    position = "right",
  })
end, { desc = "open NeoTree from the right" })

vim.keymap.set("n", "<leader>d", '"_dd', { desc = "Delete without adding to buffer" })
vim.keymap.set("n", " <leader>p", '"_dP', { desc = "Delete the selection WITHOUT resetting the buffer" })

-- Increase and decrease window height
vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })

-- Increase and decrease window width
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
