local builtin = require('telescope.builtin')
--vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files hidden=true<cr>', {desc = "Telescope"})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "Live Grep"})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = "Bufs"})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = "Help Tags"})

