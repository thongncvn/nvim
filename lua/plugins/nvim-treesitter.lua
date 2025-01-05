return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = { 'markdown', 'ruby', 'markdown_inline' }, -- Add languages you want
        highlight = {
          enable = true, -- Enable syntax highlighting
        },
        indent = {
          enable = true, -- Enable better indentation
        },
        additional_vim_regex_highlighting = false, -- Disable regex-based highlighting for speed
      }
    end,
  },
}

