call plug#begin()
Plug 'joshdick/onedark.vim'
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
call plug#end()

inoremap jj <Esc>
colorscheme onedark

lua << EOF
local lsp_installer = require('nvim-lsp-installer')
local lspconfig = require('lspconfig')
-- STEP: Set up nvim-lsp-installer first!
lsp_installer.setup {}
-- STEP: Loop through all of the installed servers and set it up via lspconfig
for _, server in ipairs(lsp_installer.get_installed_servers()) do
  lspconfig[server.name].setup {}
end
EOF
