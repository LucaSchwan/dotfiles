local map = vim.keymap.set

local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  map('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  map('i', '<C-h>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  map('n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  map('n', '<leader>c', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  map('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
  map('n', '[g', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  map('n', ']g', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
end

local lsp = require('lspconfig')
local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

local sumneko_root_path = os.getenv("HOME") ..
                              "/nightly_builds/lua-language-server"
local sumneko_binary = sumneko_root_path .. "/bin/lua-language-server"

-- lua
lsp.sumneko_lua.setup({
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
  on_attach = on_attach,
  settings = {
    Lua = {
      completion = {
        enable = true,
        showWord = 'Disable',
        -- keywordSnippet = 'Disable',
      },
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = { os.getenv('VIMRUNTIME') },
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
})

-- rust
lsp.rust_analyzer.setup{
    on_attach = on_attach,
    flags = lsp_flags,
    settings = {
      ["rust-analyzer"] = {}
    }
}

local servers = { 'pyright', 'tsserver' }
for _, server in ipairs(servers) do
    lsp[server].setup({
        flags = lsp_flags,
        on_attach = on_attach,
    })
end
