-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "<C-\\>", "<C-W>", { desc = "Delete previous word" })
vim.keymap.set("n", "<C-\\>", "a<C-W><Esc>", { desc = "Delete previous word" })

vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" })

vim.keymap.set("i", "lkj", "<Esc>", { desc = "Go to Insert Mode" })
vim.keymap.set("n", "lkj", "i", { desc = "Go to Insert Mode" })

vim.keymap.set("n", "j", "jzz", { desc = "Cursor at the centre of the screen while pressing j", remap = true })

vim.keymap.set("n", "k", "kzz", { desc = "Cursor at the centre of the screen while pressing k", remap = true })

vim.keymap.set("i", "<Space>e", function()
  require("neo-tree.command").execute({
    toggle = true,
    source = "filesystem",
    position = "right",
  })
end, { desc = "NeoTree" })
