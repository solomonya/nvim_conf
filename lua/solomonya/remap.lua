local api = require("nvim-tree.api")
vim.o.clipboard = vim.o.clipboard .. "unnamedplus"

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>q", vim.cmd.q)
vim.keymap.set("n", "<leader>e", function()
	api.tree.toggle({ find_file = true })
end)
vim.keymap.set("n", "<leader>o", api.tree.focus)
