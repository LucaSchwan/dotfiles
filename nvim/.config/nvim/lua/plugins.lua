return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'EdenEast/nightfox.nvim'
  use 'neovim/nvim-lspconfig'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

end)
