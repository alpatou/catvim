
-- ================================================================
-- ==														Keymaps													===
-- ================================================================

-- vim.keymap.set({mode}, {combination}, {action}, {opts})

local keymap = vim.keymap

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

keymap.set({'n', 'x', 'o'}, '<leader>h', '^') -- similar to 0
-- change this one conflict with lazy
keymap.set({'n', 'x', 'o'}, '<leader>l', 'g_') -- similar to $
-- Select all, select one
keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
--keymap.set('n', 'te', ':tabedit')

-- Move window
--keymap.set('n', '<Space>', '<C-w>w')

-- save more easily
keymap.set('n', '<leader>w<cr>', '<cmd>write<cr>', {desc = 'Save'})
-- close file
keymap.set('n', '<leader>q<cr>', '<cmd>quit<cr>', {desc = 'Quit'})
-- do both
keymap.set('n', '<leader>wq<cr>', '<cmd>x<cr>', {desc = 'Save and Quit'})
-- abort
keymap.set('n', '<leader>q<leader>', '<cmd>q!<cr>', {desc = 'Do Not Save and Quit'})

-- copy/paste from clipboard
keymap.set({'n', 'x'}, 'cp', 	'"+y')
keymap.set({'n', 'x'}, 'cv', 	'"+p')
-- do not copy to registry the text deletex with x 
keymap.set({'n', 'x'}, 'x', '"_x')

keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')
-- Lexplore
--keymap.set('n', '<leader><leader>', '<leader>e', {remap = true})

keymap.set('n', '<leader>l', '<cmd>Lazy<cr>')


