function SetIntelligentTwoSpacesTab()
  set tabstop=2
  set shiftwidth=2
  set expandtab
  set smartindent
  set autoindent
endfunction

function SetupReactTypeScriptEnv()
  lua require('lspconfig').tsserver.setup({})
endfunction

" TODO: This is still not good; it should format the buffer, not the file.
function Format()
  !cat % | prettierd % | sponge %
endfunction

function SetTheme(name)
  execute 'colorscheme ' . a:name
endfunction

call plug#begin()
Plug 'neovim/nvim-lspconfig'
Plug 'navarasu/onedark.nvim'
call plug#end()

call SetIntelligentTwoSpacesTab()
call SetupReactTypeScriptEnv()
call SetTheme('onedark')
