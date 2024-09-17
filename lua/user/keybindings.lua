-- vim.keymap.set({mode}, {combination}, {action}, {opts})

local keymap = vim.keymap

vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap.set({ "n", "x", "o" }, "<leader>h", "^") -- similar to 0
-- change this one conflict with lazy
keymap.set({ "n", "x", "o" }, "<leader>l", "g_") -- similar to $
-- Select all, select one
keymap.set("n", "<leader>a", ":keepjumps normal! ggVG<cr>")
keymap.set("n", "<C-a>", "gg<S-v>G")

-- New tab
--keymap.set('n', 'te', ':tabedit')

-- Move window
--keymap.set('n', '<Space>', '<C-w>w')

-- save more easily
keymap.set("n", "<leader>w<cr>", "<cmd>write<cr>", { desc = "Save" })
-- close file
keymap.set("n", "<leader>q<cr>", "<cmd>quit<cr>", { desc = "Quit" })
-- do both
keymap.set("n", "<leader>wq<cr>", "<cmd>x<cr>", { desc = "Save and Quit" })
-- abort
keymap.set("n", "<leader>q<leader>", "<cmd>q!<cr>", { desc = "Do Not Save and Quit" })

local opts = { noremap = true, silent = true }

-- save without autoformating
keymap.set("n", "<leader>wn<cr>", "<cmd>noautocmd w <cr>", opts)

-- copy/paste from clipboard
keymap.set({ "n", "x" }, "cp", '"+y')
keymap.set({ "n", "x" }, "cv", '"+p')
-- do not copy to registry the text deletex with x
keymap.set({ "n", "x" }, "x", '"_x')

keymap.set("n", "<leader>a", ":keepjumps normal! ggVG<cr>")
-- Lexplore
--keymap.set('n', '<leader><leader>', '<leader>e', {remap = true})

keymap.set("n", "<leader>l", "<cmd>Lazy<cr>")

-- vertical scroll and center
keymap.set("n", "<C-d>", "<C-d>zz", opts)
keymap.set("n", "<C-u>", "<C-d>zz", opts)

-- Find and center, test it if you like it, the zv opens folds
keymap.set("n", "n", "nzzzv", opts)
keymap.set("n", "N", "Nzzzv", opts)

-- toggle line wrap
keymap.set("n", "<leader>lw", "<cmd>set wrap!<cr>", opts)

-- keep in visual when indent
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)

-- keep last yanked when pasting
-- keymap.set("v", "p", '"_dP', opts)
