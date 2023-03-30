vim.opt.signcolumn = 'yes'

local lsp = require('lsp-zero').preset({
  name = 'recommended',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()


vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = false,
  float = true,
})
vim.api.nvim_set_keymap('n', '<leader>m', '<cmd>lua vim.diagnostic.open_float()<CR>',{ desc = "Show my potatos"})
