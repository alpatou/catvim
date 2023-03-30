
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.number.LineNr = true
vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#51B3EC', bold=true })
-- this one does not work, need to override colorscheme somehow, also if give cmd
-- colorscheme *** , these lines do not run again, todo 
vim.api.nvim_set_hl(0, 'LineNr', { fg='black', bold=true })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='black', bold=true })


