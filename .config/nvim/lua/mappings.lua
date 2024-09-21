require "nvchad.mappings"

local map = vim.keymap.set

-- nvim-tree
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })

-- exit
map("i", "jk", "<ESC>")
