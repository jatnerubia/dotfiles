require "nvchad.options"

-- add yours here!

local o = vim.o

o.relativenumber = true

o.scrolloff = 8

-- Fold
o.foldlevel = 99
o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"
o.foldenable = false

o.wrap = false
