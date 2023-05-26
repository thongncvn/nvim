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

return {
	use = use,
	setup = setup,
}
