function map(m, k, v)
    vim.keymap.set(m, k, v, { noremap = true, silent = true })
end
