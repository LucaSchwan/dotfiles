local g = vim.g
local o = vim.o

o.termguicolors = true

-- Number of screen lines to keep above and below the cursor
o.scrolloff = 8

-- Better editor UI
o.number = true
o.numberwidth = 4
o.relativenumber = true
o.cursorline = true

-- Better editing experience
o.expandtab = true
o.smarttab = true
o.shiftwidth = 2
o.tabstop = 2
o.softtabstop = -1

-- Case insensitive searching UNLESS /C or capital in search
o.ignorecase = true
o.smartcase = true

-- Better buffer splitting
o.splitright = true
o.splitbelow = true

-- Makes neovim and host OS clipboard play nicely with each other
o.clipboard = "unnamedplus"

-- Map <leader> to space
g.mapleader = ","
g.maplocalleader = ","
