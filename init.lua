-- based on https://vonheikemen.github.io/devlog/tools/build-your-first-lua-config-for-neovim/


-- ========================================================================== --
-- ==                           EDITOR SETTINGS                            == --
-- ========================================================================== --
local set = vim.opt

set.number 	= true
set.relativenumber = true
set.mouse 	= 'a'
--Set autoindent
set.autoindent = true
--Set UTF-8 encoding
set.encoding = 'utf-8'
set.ignorecase 	= true
set.smartcase 	= true
-- highlight search
set.hlsearch 	= true
-- captain obvious
set.wrap 	= true
-- Preserve the indentation of a virtual line. These "virtual lines" are the ones only visible when wrap is enabled.
set.breakindent = true
-- The amount of space on screen a Tab character can occupy. The default value is 8. I think 2 is fine.
set.tabstop 	= 2
-- Amount of characters Neovim will use to indent a line. This option influences the keybindings << and >>. The default value is 8. Most of the time we want to set this with same value as tabstop.
set.shiftwidth	= 2
-- Controls whether or not Neovim should transform a Tab character to spaces. The default value is false.
set.expandtab	= false

set.wildignore:append { '*/node_modules/*' }

-- ================================================================
-- ==														Keymaps													===
-- ================================================================

-- vim.keymap.set({mode}, {combination}, {action}, {opts})

local keymap = vim.keymap

vim.g.mapleader = ' '

vim.keymap.set({'n', 'x', 'o'}, '<leader>h', '^') -- similar to 0
vim.keymap.set({'n', 'x', 'o'}, '<leader>l', 'g_') -- similar to $
-- Select all, select one
keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit')

-- Move window
keymap.set('n', '<Space>', '<C-w>w')

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
keymap.set('n', '<leader>e', '<cmd>Lexplore<cr>')
keymap.set('n', '<leader><leader>', '<leader>e', {remap = true})


-- ========================================================================== --
-- ==                               COMMANDS                               == --
-- ========================================================================== --

vim.api.nvim_create_user_command('ReloadConfig', 'source $MYVIMRC', {})



-- =============================
-- == 		Plug 							====
-- =============================


local lazy = {}

function lazy.install(path) 
	if not vim.loop.fs_stat(path) then 
		print('Installing lazy.nvim...')
		vim.fn.system({
			'git',
			'clone',
			 '--filter=blob:none',
      'https://github.com/folke/lazy.nvim.git',
      '--branch=stable', -- latest stable release
      path,
    })
  end
end


function lazy.setup(plugins) 
	lazy.install(lazy.path)

  vim.opt.rtp:prepend(lazy.path)
  require('lazy').setup(plugins, lazy.opts)
end

lazy.path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
lazy.opts = {}

lazy.setup({
	{'folke/tokyonight.nvim'},
	{'kaicataldo/material.vim'},
  {'nvim-lualine/lualine.nvim'},
})

-- for material 
vim.g.material_terminal_italics = 1
vim.g.material_theme_style =  'lighter-community' 

vim.opt.termguicolors = true


vim.cmd.colorscheme('tokyonight-day')

require('lualine').setup({
	options = {
		icons_enabled = true,
		theme = 'tokyonight-day',
    component_separators = '|-|',
    section_separators = '---',
	}
})


