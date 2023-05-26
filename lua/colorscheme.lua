require("dot").use({
	"rebelot/kanagawa.nvim",
	config = function()
		require("kanagawa").setup({
			transparent = true,
			commentStyle = { italic = false },
			keywordStyle = { italic = false },
		})
	end,
})

require("dot").use({
	"olimorris/onedarkpro.nvim",
	config = function()
		vim.cmd([[colorscheme onedark]])
	end,
})

require("dot").command("ColorschemePicker", "Show Telescope colorscheme", function()
	vim.cmd([[Telescope colorscheme enable_preview=true]])
end)
