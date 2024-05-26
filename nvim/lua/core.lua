-- main config lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- list plugins
require("lazy").setup({
    {"nvim-tree/nvim-web-devicons"}, -- for nvim-tree
    {"nvim-tree/nvim-tree.lua"},
    {"echasnovski/mini.nvim", version = false}, -- comment and pairs
    -- mason
    {"williamboman/mason.nvim"},
    {"williamboman/mason-lspconfig.nvim"},
    {"neovim/nvim-lspconfig"},
    -- end mason
    -- cmp 
    {"hrsh7th/cmp-nvim-lsp"},
    {"hrsh7th/cmp-buffer"},
    {"hrsh7th/cmp-path"},
    {"hrsh7th/cmp-cmdline"},
    {"hrsh7th/nvim-cmp"},
    {"hrsh7th/cmp-vsnip"},
    {"hrsh7th/vim-vsnip"},
    -- end cmp
    {"nvim-lua/plenary.nvim"}, -- for telescope
    {"nvim-telescope/telescope.nvim", tag = '0.1.6'},
    {"stevearc/conform.nvim"},
    {"linrongbin16/lsp-progress.nvim"},
    {"nvim-lualine/lualine.nvim"},
    {"nvim-treesitter/nvim-treesitter"},
})
