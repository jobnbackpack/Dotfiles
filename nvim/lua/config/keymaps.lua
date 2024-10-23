-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- greatest remap ever
keymap.set("x", "<leader>p", [["_dP]])

-- -- Harpoon options
-- local harpoon = require("harpoon")
-- harpoon:setup()
--
-- keymap.set("n", "<leader>a", function()
--   harpoon:list():add()
-- end)
-- keymap.set("n", "<C-e>", function()
--   harpoon.ui.toggle_quick_menu(harpoon:list())
-- end)
--
-- keymap.set("n", "<leader>h", function()
--   harpoon:list():select(1)
-- end)
-- keymap.set("n", "<leader>t", function()
--   harpoon:list():select(2)
-- end)
-- keymap.set("n", "<leader>n", function()
--   harpoon:list():select(3)
-- end)
-- keymap.set("n", "<leader>s", function()
--   harpoon:list():select(4)
-- end)

keymap.set("n", "<C-f>", ":!tmux neww tmux-sessionizer<CR>")
