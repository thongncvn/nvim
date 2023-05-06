require('dot').use {
  'folke/which-key.nvim',
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    vim.g.mapleader = ' '
    require('which-key').setup({})
    require('which-key').register({
      e = {'<cmd>NvimTreeFindFileToggle<cr>', 'Toggle Nvim Tree'}
    }, {
      prefix = '<leader>'
    })
  end
}
