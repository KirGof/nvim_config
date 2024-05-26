
# Recipe Nvim-config in lua
Structure config:
${HOME}/.config/nvim

In this you can make many files and directors, but main file is init.lua, witch connects all plugins.

I have:

```
nvim
├── init.lua
└── lua
    ├── config.lua
    ├── core.lua
    ├── mappings.lua
    └── plugins
        ├── cmp.lua
        ├── conform.lua
        ├── lsp-progress.lua
        ├── mason.lua
        ├── mini.lua
        ├── nvim-tree.lua
        ├── nvim-web-devicons.lua
        ├── telescope.lua
        └── treesitter.lua
```
In the future, maybe more.

## Mapping && Config.

[vim.g](https://neovim.io/doc/user/lua.html#vim.g) Global  editor variables. Key with no value returns `nil`.

[vim.o](https://neovim.io/doc/user/lua.html#vim.o) vim options can be accessed through , which behaves like Vimscript [:set](https://neovim.io/doc/user/quickref.html#option-list)

[vim.keymap.set(`{mode}`,`{lhs}`,`{rhs}`,`{opts}`)](https://neovim.io/doc/user/lua.html#vim.keymap.set()) Adds a new [mapping](https://neovim.io/doc/user/map.html#mapping)

Because this is Lua, we can enter new variable and assign them this value.

``` lua
local g = vim.g
local b = vim.v
local w = vim.w
local t = vim.t
local v = vim.v
local o = vim.o
local map = vim.keymap.set
```

And then we will do, it's a leader button.

```lua
g.mapleader = " "
g.maplocalleader = " "
```

for example
``` lua
o.number = true -- print the line number in front of each line
o.numberwidth = 2 -- number of columns used for the line number
o.scrolloff = 10 -- minimum nr. of lines above and below cursor
```

This is commands to split nvim. (\<CR> it is use enter button).
``` lua
map('n', '|', ':vsplit<CR>')
map('n', '\\', ':split<CR>')
```

More information look in the config files.

List plugins:
[Lazy](https://github.com/folke/lazy.nvim)<br>
[Nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)<br>
[Nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)<br>
[Mini.nvim](https://github.com/echasnovski/mini.nvim?tab=readme-ov-file#installation)<br>
[Nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)<br>
[Mason](https://github.com/williamboman/mason.nvim)<br>
[Mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim) <br>
[Nvim-cmp](https://github.com/hrsh7th/nvim-cmp)<br>
[Telescope](https://github.com/nvim-telescope/telescope.nvim)<br>
[Conform](https://github.com/stevearc/conform.nvim)<br>







