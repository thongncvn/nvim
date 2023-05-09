require("dot").use({
	"nvim-tree/nvim-tree.lua",
	config = function()
		require("nvim-tree").setup({
			git = {
				enable = false,
			},
			renderer = {
				root_folder_label = false,
				indent_markers = { enable = true, inline_arrows = false },
				icons = { show = { folder_arrow = false } },
			},
		})

		vim.keymap.set("n", "<leader>e", "<Cmd>NvimTreeFindFile<CR>", { silent = true })
		vim.keymap.set("n", "<leader>`", "<Cmd>NvimTreeToggle<CR>", { silent = true })
	end,
})
