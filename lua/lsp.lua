require("dot").use({
	"williamboman/mason.nvim",
	requires = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"jose-elias-alvarez/null-ls.nvim",
		"nvim-lua/plenary.nvim",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local cmp = require("cmp")
		cmp.setup({
			completion = {
				completeopt = "menu,menuone,noinsert",
			},
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
			}),
			mapping = cmp.mapping.preset.insert({
				["<Space>"] = cmp.mapping.confirm({ select = true }),
				["<Tab>"] = cmp.mapping.select_next_item(),
				["<S-Tab>"] = cmp.mapping.select_prev_item(),
			}),
		})

		require("mason").setup()
		require("mason-lspconfig").setup()
		require("mason-lspconfig").setup_handlers({
			function(server_name)
				local capabilities = require("cmp_nvim_lsp").default_capabilities()
				require("lspconfig")[server_name].setup({
					capabilities = capabilities,
				})
			end,
		})

		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettierd,
			},
		})

		vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format()]])
	end,
})
