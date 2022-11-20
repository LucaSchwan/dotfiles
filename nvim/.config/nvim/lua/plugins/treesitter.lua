require'nvim-treesitter.configs'.setup {
  ensure_installed = { 'lua', 'rust', 'python', 'typescript'},

  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  refactor = {
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = "grr",
      },
    },
  },
}
