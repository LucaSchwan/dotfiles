return require("packer").startup(function()
  -- Packer can manage itself
  use({ "wbthomason/packer.nvim" })

  use({ "ellisonleao/gruvbox.nvim" })

  use({ "neovim/nvim-lspconfig" })
  use({ "jose-elias-alvarez/null-ls.nvim" })
  use({ "onsails/lspkind.nvim" })

  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.0",
  })
  use({ "nvim-lua/plenary.nvim" })

  -- Treesitter
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  use({ "nvim-treesitter/nvim-treesitter-refactor" })

  -- nvim-cmp
  use({ "hrsh7th/nvim-cmp" })
  use({ "hrsh7th/cmp-nvim-lua" })
  use({ "hrsh7th/cmp-nvim-lsp" })
  use({ "hrsh7th/cmp-buffer" })
  use({ "hrsh7th/cmp-path" })
  use({ "hrsh7th/cmp-cmdline" })
  use({ "saadparwaiz1/cmp_luasnip" })

  -- luasnip
  use({ "L3MON4D3/luasnip" })

  use({
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  })

  use({ "kdheepak/lazygit.nvim" })

  use({ "lambdalisue/suda.vim" })

  use({ "evanleck/vim-svelte" })
end)
