local packages = {}

local function use(package)
	table.insert(packages, package)
end

local function setup()
	require("packer").startup(function(use)
		use("wbthomason/packer.nvim")
		for _, pocket in ipairs(packages) do
			use(pocket)
		end
	end)
end

local function command(name, desc, third_param, fourth_param)
	local keymap
	local action
	local mode

	if type(third_param) == "function" then
		action = third_param
		mode = "nokeymap"
	else
		keymap = third_param
		action = fourth_param
		mode = "keymap"
	end

	vim.api.nvim_create_user_command(name, action, { desc = desc })

	if mode == "keymap" then
		vim.keymap.set("n", keymap, "<cmd>" .. name .. "<cr>", { silent = true })
	end
end

return {
	use = use,
	setup = setup,
	command = command,
}
