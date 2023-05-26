require("dot").use({
	"rebelot/kanagawa.nvim",
	config = function()
		require("kanagawa").setup({
			transparent = true,
			commentStyle = { italic = false },
			keywordStyle = { italic = false },
		})

		vim.cmd([[colorscheme kanagawa]])
	end,
})

require("dot").command("ColorschemePicker", "Show Telescope colorscheme", function()
	vim.cmd([[Telescope colorscheme enable_preview=true]])
end)
