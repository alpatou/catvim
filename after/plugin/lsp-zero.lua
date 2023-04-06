vim.opt.signcolumn = 'yes'

local lsp = require('lsp-zero').preset({
	name = 'recommended',
	set_lsp_keymaps = true,
	manage_nvim_cmp = true,
	suggest_lsp_servers = true,
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()


lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
	-- local opts = { buffer = bufnr, remap = false }
	--
	-- vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, { desc = "GT definition", unpack(opts) })
	-- vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	-- vim.keymap.set("n", "<leader>dws", function() vim.lsp.buf.workspace_symbol() end,
	-- 	{ desc = "workspace symbol", unpack(opts) })
	-- vim.keymap.set("n", "<leader>dd", function() vim.diagnostic.open_float() end, opts)
	-- -- think about it later
	-- vim.api.nvim_set_keymap('n', '<leader>m', '<cmd>lua vim.diagnostic.open_float()<CR>', { desc = "Show my potatos" })
	-- vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, { desc = "next diagnostic, next", unpack(opts) })
	-- vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end,
	-- 	{ desc = "previous diagnostic, previous", unpack(opts) })
	-- vim.keymap.set("n", "<leader>dca", function() vim.lsp.buf.code_action() end, { desc = "code actions", unpack(opts) })
	-- vim.keymap.set("n", "<leader>drs", function() vim.lsp.buf.references() end, { desc = "show references", unpack(opts) })
	-- vim.keymap.set("n", "<leader>drn", function() vim.lsp.buf.rename() end, { desc = "rename, rebe", unpack(opts) })
	-- vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, { desc = "signature help", unpack(opts) })

	vim.keymap.set({ 'n', 'x' }, '<leader>do', function()
			vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
	end, { desc = "Order and Format" })
end)

lsp.format_on_save({
	format_opts = {
		timeout_ms = 10000,
	},
	servers = {
		['lua_ls'] = { 'lua' },
		['rust_analyzer'] = { 'rust' },
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
