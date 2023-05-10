require("dot").use({
	"akinsho/toggleterm.nvim",
	tag = "*",
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<c-\>]],
			direction = "float",
		})
	end,
})
