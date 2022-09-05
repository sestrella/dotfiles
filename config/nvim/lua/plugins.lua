local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/vim-vsnip")
	use("neovim/nvim-lspconfig")
	use({
		"nvim-telescope/telescope.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})
	use("nvim-treesitter/nvim-treesitter")
	use({
		"jose-elias-alvarez/null-ls.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})

	if packer_bootstrap then
		require("packer").sync()
	end
end)
