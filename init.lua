-- based on https://vonheikemen.github.io/devlog/tools/build-your-first-lua-config-for-neovim/
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require('user.editor')
require('user.keybindings')
require('user.cmds')
require('user.plugins')
require('user.colorscheme')


