-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map Ctrl-A to select all text in normal mode
vim.keymap.set({ "i", "n" }, "<C-A>", "<Esc>ggVG")

-- Delete a line without copying the deleted line
vim.keymap.set("n", "d", '"_d')

-- CTRL backspace to delete word
vim.keymap.set("i", "<C-\\>", "<C-W>")

-- disable autocorrect --
-- vim.keymap.set(
--   "n",
--   "<leader>ua",
--   "<Cmd>lua require('cmp').setup.buffer {enabled = true} <CR>",
--   { desc = "Disable Auto-complete" }
-- )
