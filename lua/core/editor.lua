-- ========================================================================== --
-- ==                           EDITOR SETTINGS                            == --
-- ========================================================================== --
local set = vim.opt

set.number = true
set.relativenumber = true
set.mouse = "a"
--Set autoindent
set.autoindent = true
set.ignorecase = true
--Set UTF-8 encoding
set.encoding = "utf-8"
set.smartcase = true
-- highlight search
set.hlsearch = true
-- captain obvious
set.wrap = true
-- Preserve the indentation of a virtual line. These "virtual lines" are the ones only visible when wrap is enabled.
set.breakindent = true
-- The amount of space on screen a Tab character can occupy. The default value is 8. I think 2 is fine.
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true -- Controls whether or not Neovim should transform a Tab character to spaces. The default value is false.

set.scrolloff = 4 -- Minimal number of screen lines to keep above and below the cursor (default: 0)
set.sidescrolloff = 8 -- Minimal number of screen columns either side of cursor if wrap is `false` (default: 0)


set.termguicolors = true
set.bg = "light"

set.wildignore:append({ "*/node_modules/*" })
