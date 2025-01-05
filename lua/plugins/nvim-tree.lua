return {
  {
    'nvim-tree/nvim-tree.lua',
      keys = {
	{"<leader>b", "<cmd>NvimTreeToggle<cr>", desc = "NvimTreeToggle"},
      },
      opts = {
        sort = {
          sorter = "case_sensitive",
        },
        view = {
          width = 30,
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = true,
        },
      }
  },
  {'nvim-tree/nvim-web-devicons'},
}
