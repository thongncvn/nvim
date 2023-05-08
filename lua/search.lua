require("dot").use({
	"nvim-telescope/telescope.nvim",
	tag = "0.1.1",
	requires = { { "nvim-lua/plenary.nvim" } },
	config = function()
		require("telescope").setup({
			defaults = {
				layout_config = {
					horizontal = { height = 0.9, width = 0.9 },
				},
				mappings = {
					i = {
						["<esc>"] = require("telescope.actions").close,
					},
				},
			},
		})

		-- TODO: Move this to mappings.lua in a more clever way?
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>p", builtin.find_files, {})
		vim.keymap.set("n", "<leader>F", builtin.live_grep, {})
	end,
})