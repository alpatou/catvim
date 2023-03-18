
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
set.softtabstop = 2
-- Amount of characters Neovim will use to indent a line. This option influences the keybindings << and >>. The default value is 8. Most of the time we want to set this with same value as tabstop.
set.shiftwidth	= 2
-- Controls whether or not Neovim should transform a Tab character to spaces. The default value is false.
set.expandtab	= false

set.wildignore:append { '*/node_modules/*' }
