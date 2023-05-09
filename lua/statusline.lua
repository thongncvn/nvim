-- -- lualine.nvim, currently don't need
-- require('dot').use {
--   'nvim-lualine/lualine.nvim',
--   requires = { 'nvim-tree/nvim-web-devicons', opt = true },
--   config = function()
--     require('lualine').setup({
--       options = {
-- 	globalstatus = true,
-- 	ignore_focus = {'NvimTree'}
--       },
--       sections = {
--         lualine_a = {'mode'},
--         lualine_b = {'filename'},
--         lualine_c = {},
--         lualine_x = {},
--         lualine_y = {},
--         lualine_z = {}
--       },
--       inactive_sections = {
--         lualine_a = {},
--         lualine_b = {},
--         lualine_c = {},
--         lualine_x = {},
--         lualine_y = {},
--         lualine_z = {}
--       }
--     })
--   end
-- }

-- Toggle the statusline on/off
_G.statusline = {}
statusline.visible = true

function statusline.toggle()
	if statusline.visible then
		vim.cmd([[set noshowmode]])
		vim.cmd([[set noruler]])
		vim.cmd([[set noshowcmd]])
		vim.cmd([[set laststatus=0]])
	else
		vim.cmd([[set showmode]])
		vim.cmd([[set ruler]])
		vim.cmd([[set showcmd]])
		vim.cmd([[set laststatus=2]])
	end
	statusline.visible = not statusline.visible
end

statusline.toggle()

return statusline
