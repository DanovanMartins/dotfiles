vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use ('wbthomason/packer.nvim')
  use ({
      'nvim-telescope/telescope.nvim',
      requires = {{ 'nvim-lua/plenary.nvim' }}
  })
  use ('nvim-tree/nvim-tree.lua')
  use ('nvim-tree/nvim-web-devicons') -- optional [tree icons]
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use ("nvim-treesitter/nvim-treesitter-context")

  -- colorschemes
  use ('folke/tokyonight.nvim')
  use ('lunarvim/darkplus.nvim')

  -- commenter
  use ('preservim/nerdcommenter')

  -- cmp plugins
  use ('hrsh7th/nvim-cmp')          -- The completion plugin
  use ('hrsh7th/cmp-buffer')        -- buffer completions
  use ('hrsh7th/cmp-path')          -- path completions
  use ('saadparwaiz1/cmp_luasnip')  -- snippet completions
  use ('hrsh7th/cmp-nvim-lsp')
  use ('hrsh7th/cmp-nvim-lua')

  --snippets
  use ('L3MON4D3/LuaSnip')
  use ('rafamadriz/friendly-snippets')

  -- LSP
  use ('neovim/nvim-lspconfig')
  use ('williamboman/mason.nvim')
  use ('williamboman/mason-lspconfig.nvim')
  use ('jose-elias-alvarez/null-ls.nvim')
  use ('RRethy/vim-illuminate')
  
  -- Git
  use('tpope/vim-fugitive')
  use ('APZelos/blamer.nvim')
  use ('lewis6991/gitsigns.nvim')

  -- GUI
  -- use ('nvim-tree/nvim-web-devicons')
  use ('nvim-lualine/lualine.nvim')
  use ('romgrk/barbar.nvim')
end)
