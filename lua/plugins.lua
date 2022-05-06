return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- apperative plugins
    use 'glepnir/dashboard-nvim'
  
    -- functional plugins
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/nvim-cmp'
    use 'williamboman/nvim-lsp-installer'
    use 'onsails/lspkind-nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-treesitter/nvim-treesitter-refactor'
    use 'akinsho/nvim-toggleterm.lua'
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
    use 'norcalli/nvim-colorizer.lua'
    use 'WhoIsSethDaniel/toggle-lsp-diagnostics.nvim'
    use 'terrortylor/nvim-comment'
    use {'turbio/bracey.vim', run = 'cd app & npm install --prefix server'}
    use 'sbdchd/neoformat'
    --golang
    use 'fatih/vim-go'
    -- symbols bar
    use 'majutsushi/tagbar'
    -- Git integration
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'
    -- themes
    use 'gruvbox-community/gruvbox'
    -- file explorer
    use {
        'scrooloose/nerdtree', 
        on = 'NERDTreeToggle'
    }
    use 'Xuyuanp/nerdtree-git-plugin'
    use 'tiagofumo/vim-nerdtree-syntax-highlight'
    use 'ryanoasis/vim-devicons'
  
    use {
      'lewis6991/gitsigns.nvim',
      requires = {
        'nvim-lua/plenary.nvim'
      }
    }
  
    use {
    'phaazon/hop.nvim',
    as = 'hop'
    }
  
    use {
      'akinsho/nvim-bufferline.lua',
      requires = 'kyazdani42/nvim-web-devicons'
    }
  
    use {
      'p00f/cphelper.nvim',
      requires = {
        'nvim-lua/plenary.nvim',
        'ygm2/rooter.nvim',
        opt = true
      }
    }
  
    use {
      'hoob3rt/lualine.nvim',
      requires = {
        'kyazdani42/nvim-web-devicons',
        opt = true
      }
    }
  
    use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
  }

end)
