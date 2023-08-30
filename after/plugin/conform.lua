require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "prettier_d", "prettier" },
		javascriptreact = { "prettier_d", "prettier" },
		typescript = { "prettier_d", "prettier" },
		typescriptreact = { "prettier_d", "prettier" },
	},
})
