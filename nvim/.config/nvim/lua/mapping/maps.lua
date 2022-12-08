require("mapping.helper")

-- Telescope
local builtin = require("telescope.builtin")
map("n", "<leader>ff", builtin.find_files)
map("n", "<leader>fg", builtin.git_files)

-- Git
map("n", "<leader>gg", ":LazyGit<CR>")
map("n", "<leader>gc", builtin.git_commits)

-- colemak movement keys
map("n", "n", "j")
map("v", "n", "j")
map("n", "e", "k")
map("v", "e", "k")
map("n", "i", "l")
map("v", "i", "l")
map("n", "N", "J")
map("v", "N", "J")
map("n", "E", "K")
map("v", "E", "K")
map("n", "I", "L")
map("v", "I", "L")

-- insert & undo remaps
map("n", "u", "i")
map("v", "u", "i")
map("n", "l", "u")
map("v", "l", "u")
map("n", "U", "I")
map("v", "U", "I")
map("n", "L", "U")
map("v", "L", "U")

-- find, till & end of word
map("n", "f", "e")
map("v", "f", "e")
map("n", "t", "f")
map("v", "t", "f")
map("n", "j", "t")
map("v", "j", "t")
map("n", "F", "E")
map("v", "F", "E")
map("n", "T", "F")
map("v", "T", "F")
map("n", "J", "T")
map("v", "J", "T")

-- basic editing
map("n", "<leader>s", "<cmd>w<CR>")
map("n", "<leader>ls", "<cmd>luafile %<CR>")
