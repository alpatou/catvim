vim.opt.timeoutlen = 500


require("which-key").register({
	f = {
		name = "Find",
	},
	g = {
		name = "Comment",
		c = {
			name =  "Text object (give it)",
			c = {"This Line"}
		},
	}
}, {prefix = "<leader>"})
