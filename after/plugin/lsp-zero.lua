vim.opt.signcolumn = 'yes'

local lsp = require('lsp-zero').preset({
	name = 'recommended',
})


lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({ buffer = bufnr })

	vim.keymap.set({ 'n', 'x' }, '<leader>do', function()
		vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
	end, { desc = "Order and Format" })


	vim.api.nvim_set_keymap('n', '<leader>m', '<cmd>lua vim.diagnostic.open_float()<CR>', { desc = "Show my potatos" })
end)

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.format_on_save({
  servers = {
    ['lua_ls'] = {'lua'},
    ['rust_analyzer'] = {'rust'},
  }
})

lsp.setup()

vim.diagnostic.config({
	virtual_text = false,
	signs = true,
	update_in_insert = false,
	underline = true,
	severity_sort = false,
	float = true,
})
