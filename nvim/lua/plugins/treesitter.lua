require 'nvim-treesitter.configs'.setup
{
	ensure_installed = { "lua", "dockerfile", "c", "vim", "doxygen", "sql" },

	highlight = {
		enable = true,
		use_languagetree = true,
	},

	indent = { enable = true },

}
