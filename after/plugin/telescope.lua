local status, builtin = pcall(require,'telescope.builtin')
if (not status) then return end

--vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files hidden=true<cr>', {desc = "Telescope"})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "Live Grep"})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = "Bufs"})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = "Help Tags"})




local status, telescope = pcall(require, "telescope")
if (not status) then return end

-- disable netrw at the very start of your init.lua (strongly advised)
 -- vim.g.loaded_netrw = 1
 -- vim.g.loaded_netrwPlugin = 1

-- You don't need to set any of these options.
-- IMPORTANT!: this is only a showcase of how you can set default options!
telescope.setup {
  extensions = {
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = false,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
  },
}
-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
telescope.load_extension "file_browser"


vim.api.nvim_set_keymap(
  "n",
  "<leader>e<CR>",
  "<cmd>Telescope file_browser<CR>",
  { noremap = true , desc = "File Explorer" }
)

-- open file_browser with the path of the current buffer
vim.api.nvim_set_keymap(
  "n",
  "<leader>ec<CR>",
  "<cmd>Telescope file_browser path=%:p:h select_buffer=true<CR>",
  { noremap = true , desc = "File Explorer Current Buffer"}
)
