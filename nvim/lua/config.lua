
local b = vim.v
local w = vim.w
local t = vim.t
local v = vim.v
local o = vim.o
local g = vim.g

--number
o.number = true -- number of columns used for the line number
o.numberwidth = 2 -- number of columns used for the line number

--scroll
o.scrolloff = 10 -- minimum nr. of lines above and below cursor

--tab
o.shiftwidth = 4 -- number of spaces to use for (auto)indent step
o.smarttab = true -- use 'shiftwidth' when inserting <Tab>

--color
o.termguicolors = true -- Enables 24-bit RGB color in the TUI. That need to some plugin.
 
-- disable netrw 
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- clipboard
o.clipboard = "unnamedplus" -- to copy out of nvim

