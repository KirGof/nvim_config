local map = vim.keymap.set
local g = vim.g

-- leader button
g.mapleader = " "
g.maplocalleader = " "

-- Splits
map('n', '|', ':vsplit<CR>')
map('n', '\\', ':split<CR>')

-- Save and Quit or only Save
map('n', '<leader>q', ':wq<CR>')
map('n', '<leader>w', ':w<CR>')

-- Move cursor after split screen
map('n', '<c-k>', ':wincmd k<CR>')
map('n', '<c-j>', ':wincmd j<CR>')
map('n', '<c-h>', ':wincmd h<CR>')
map('n', '<c-l>', ':wincmd l<CR>')

-- nvimtree
map("n", "<leader>e", ":NvimTreeToggle<CR>")

--formating 
map("n", "<c-i>", function() require("conform").format { lsp_fallback = true } end)
