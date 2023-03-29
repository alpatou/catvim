-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
	update_focused_file = { enable = true },
	hijack_directories = {
		auto_open = false
	}

})


vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle <cr>',{})

-- close nvim if only tree is remains open. Contributors are refusing to this thing...
-- https://github.com/nvim-tree/nvim-tree.lua/issues/1005#issuecomment-1166393398
vim.api.nvim_create_autocmd('BufEnter', {
    command = "if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif",
    nested = true,
})
