local DEFAULT_SETTINGS = {
	ensure_installed = {},
	automatic_enable = true,
}

return {
	"mason-org/mason-lspconfig.nvim",
	opts = { DEFAULT_SETTINGS },
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
}
