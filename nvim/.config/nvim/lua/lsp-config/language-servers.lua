local map = vim.keymap.set

local on_attach = function(client, bufnr)
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  map("n", "<leader>ld", "<cmd>lua vim.lsp.buf.definition()<CR>", bufopts)
  map("n", "<leader>lh", "<cmd>lua vim.lsp.buf.hover()<CR>", bufopts)
  map("n", "<leader>li", "<cmd>lua vim.lsp.buf.implementation()<CR>", bufopts)
  map("n", "<leader>lR", "<cmd>lua vim.lsp.buf.references()<CR>", bufopts)
  map("i", "<leader>lH", "<cmd>lua vim.lsp.buf.signature_help()<CR>", bufopts)
  map("n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<CR>", bufopts)
  map("n", "<leader>lc", "<cmd>lua vim.lsp.buf.code_action()<CR>", bufopts)
  map("n", "<leader>le", "<cmd>lua vim.diagnostic.open_float()<CR>", bufopts)
  map("n", "<leader>l[", "<cmd>lua vim.diagnostic.goto_prev()<CR>", bufopts)
  map("n", "<leader>l]", "<cmd>lua vim.diagnostic.goto_next()<CR>", bufopts)
  map("n", "<leader>lq", "<cmd>lua vim.diagnostic.setloclist()<CR>", bufopts)
end

local lsp = require("lspconfig")
local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

local sumneko_root_path = os.getenv("HOME") .. "/nightly_builds/lua-language-server"
local sumneko_binary = sumneko_root_path .. "/bin/lua-language-server"

-- lua
lsp.sumneko_lua.setup({
  cmd = { sumneko_binary, "-E", sumneko_root_path .. "/main.lua" },
  on_attach = on_attach,
  settings = {
    Lua = {
      completion = {
        enable = true,
        showWord = "Disable",
        -- keywordSnippet = 'Disable',
      },
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = "LuaJIT",
      },
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = { os.getenv("VIMRUNTIME") },
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
})

-- rust
lsp.rust_analyzer.setup({
  on_attach = on_attach,
  flags = lsp_flags,
  settings = {
    ["rust-analyzer"] = {},
  },
})

lsp.pylsp.setup({
  on_attach = on_attach,
  flags = lsp_flags,
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = { "W391" },
          maxLineLength = 100,
        },
        autopep8 = {
          enabled = true,
        },
      },
    },
  },
})

lsp.svelte.setup({
  on_attach = on_attach,
  flags = lsp_flags,
})

local servers = { "tsserver" }
for _, server in ipairs(servers) do
  lsp[server].setup({
    flags = lsp_flags,
    on_attach = on_attach,
  })
end
