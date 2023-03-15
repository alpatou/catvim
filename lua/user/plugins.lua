-- =============================
-- == 		Plug 							====
-- =============================


local lazy = {}

-- Install package manager
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)


require('lazy').setup({
	{'folke/tokyonight.nvim'},
	{'kaicataldo/material.vim'},
  {'nvim-lualine/lualine.nvim'},
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{
    'nvim-telescope/telescope.nvim', tag = '0.1.1', dependencies = { 'nvim-lua/plenary.nvim' }
  }
})

-- for material 
vim.g.material_terminal_italics = 1
vim.g.material_theme_style =  'lighter-community' 

vim.opt.termguicolors = true


vim.cmd.colorscheme('tokyonight')


