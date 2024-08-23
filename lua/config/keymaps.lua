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

vim.keymap.set("n", "j", "jzz", { desc = "Cursor at the centre of the screen while pressing j" })
vim.keymap.set("n", "k", "kzz", { desc = "Cursor at the centre of the screen while pressing k" })

vim.keymap.set("n", "<Space>e", function()
  require("neo-tree.command").execute({
    toggle = true,
    source = "filesystem",
    position = "right",
  })
end, { desc = "NeoTree" })

vim.keymap.set("n", "<leader>d", '"_dd', { desc = "Delete without adding to buffer" })

vim.keymap.set("n", " <leader>p", '"_dP', { desc = "Delete the selection WITHOUT resetting the buffer" })
