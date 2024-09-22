-- vim.keymap.set({mode}, {combination}, {action}, {opts})

local keymap = vim.keymap

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opts = { noremap = true, silent = true }

-- Function to merge a description with common options
local function opts_with_desc(desc, opts)
	-- Base options, which you can reuse
	local base_opts = { noremap = true, silent = true }

	-- Add description
	base_opts.desc = desc

	-- If any extra options are passed (opts), merge them
	if opts then
		for k, v in pairs(opts) do
			base_opts[k] = v
		end
	end

	return base_opts
end

keymap.set("n", "<C-a>", "gg<S-v>G")

-- New tab
--keymap.set('n', 'te', ':tabedit')

-- Move window
--keymap.set('n', '<Space>', '<C-w>w')

-- save more easily
keymap.set("n", "<leader>w<cr>", "<cmd>write<cr>", opts_with_desc("Save", opts))
-- close file
keymap.set("n", "<leader>q<cr>", "<cmd>quit<cr>", opts_with_desc("Quit", opts))
-- do both
keymap.set("n", "<leader>wq<cr>", "<cmd>x<cr>", opts_with_desc("Save and Quit", opts))
-- abort
keymap.set("n", "<leader>qq<leader>", "<cmd>q!<cr>", opts_with_desc("Do Not Save and Quit", opts))

-- save without autoformating
keymap.set("n", "<leader>wn<cr>", "<cmd>noautocmd w <cr>", opts)

-- copy/paste from clipboard
keymap.set({ "n", "x" }, "cp", '"+y', opts)

keymap.set({ "n", "x" }, "cv", '"+p', opts)
-- do not copy to registry the text deletex with x
keymap.set({ "n", "x" }, "x", '"_x', opts)

keymap.set("n", "<leader>a", ":keepjumps normal! ggVG<cr>", opts)

-- vertical scroll and center
keymap.set("n", "<C-d>", "<C-d>zz", opts)
keymap.set("n", "<C-u>", "<C-d>zz", opts)

-- Find and center, test it if you like it, the zv opens folds
keymap.set("n", "n", "nzzzv", opts)
keymap.set("n", "N", "Nzzzv", opts)

-- toggle line wrap
keymap.set("n", "<leader>lw", "<cmd>set wrap!<cr>", opts)

-- keep in visual when indent
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)

-- keep last yanked when pasting
-- keymap.set("v", "p", '"_dP', opts)

-- Resize with arrows
vim.keymap.set("n", "<Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", opts)
vim.keymap.set("n", "<leader>x", ":Bdelete!<CR>", opts) -- close buffer
vim.keymap.set("n", "<leader>b", "<cmd> enew <CR>", opts) -- new buffer

-- increment/decrement numbers
vim.keymap.set("n", "<leader>+", "<C-a>", opts) -- increment
vim.keymap.set("n", "<leader>-", "<C-x>", opts) -- decrement

-- window management
vim.keymap.set("n", "<leader>v", "<C-w>v", opts) -- split window vertically
vim.keymap.set("n", "<leader>h", "<C-w>s", opts) -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", opts) -- make split windows equal width & height
vim.keymap.set("n", "<leader>xs", ":close<CR>", opts) -- close current split window

-- Navigate between splits
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", opts)
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", opts)
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", opts)
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", opts)

-- tabs
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", opts) -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", opts) -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>", opts) --  go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>", opts) --  go to previous tab

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })
