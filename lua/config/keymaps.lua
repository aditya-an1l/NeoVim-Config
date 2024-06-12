-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map Ctrl-A to select all text in normal mode
vim.keymap.set({ "i", "n" }, "<C-A>", "<Esc>ggVG")
