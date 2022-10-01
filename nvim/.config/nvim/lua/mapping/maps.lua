require('mapping.helper')

-- Telescope
local builtin = require('telescope.builtin')
map2('n', '<leader>ff', builtin.find_files)
map2('n', '<leader>gf', builtin.git_files)
map2('n', '<leader>gc', builtin.git_commits)

-- colemak movement keys
map2('n', 'n', 'j')
map2('v', 'n', 'j')
map2('n', 'e', 'k')
map2('v', 'e', 'k')
map2('n', 'i', 'l')
map2('v', 'i', 'l')
map2('n', 'N', 'J')
map2('v', 'N', 'J')
map2('n', 'E', 'K')
map2('v', 'E', 'K')
map2('n', 'I', 'L')
map2('v', 'I', 'L')

-- insert & undo remaps
map2('n', 'u', 'i')
map2('v', 'u', 'i')
map2('n', 'l', 'u')
map2('v', 'l', 'u')
map2('n', 'U', 'I')
map2('v', 'U', 'I')
map2('n', 'L', 'U')
map2('v', 'L', 'U')

-- find, till & end of word
map2('n', 'f', 'e')
map2('v', 'f', 'e')
map2('n', 't', 'f')
map2('v', 't', 'f')
map2('n', 'j', 't')
map2('v', 'j', 't')
map2('n', 'F', 'E')
map2('v', 'F', 'E')
map2('n', 'T', 'F')
map2('v', 'T', 'F')
map2('n', 'J', 'T')
map2('v', 'J', 'T')

-- basic editing
map2('n', '<leader>s', '<cmd>w<CR>')
map2('n', '<leader>ls', '<cmd>luafile %<CR>')
