require("dot").use({
	"nvim-treesitter/nvim-treesitter",
	run = ":TSUpdate",
	requires = { "windwp/nvim-ts-autotag", "windwp/nvim-autopairs" },
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = "all",
			autotag = {
				enable = true,
			},
			highlight = {
				enable = true,
			},
		})
		require("nvim-autopairs").setup({})
	end,
})
