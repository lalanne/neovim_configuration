return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- apperative plugins
    use 'hrsh7th/vim-vsnip'
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
    --javascript
    use "jose-elias-alvarez/null-ls.nvim"
    use "jose-elias-alvarez/nvim-lsp-ts-utils"
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
        on = 'NERDTreeToggle',
        requires =  'ryanoasis/vim-devicons',
    }
    use 'Xuyuanp/nerdtree-git-plugin'
    use 'tiagofumo/vim-nerdtree-syntax-highlight'
  
    use {
    'phaazon/hop.nvim',
    as = 'hop'
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
      'akinsho/nvim-bufferline.lua',
      requires = 'kyazdani42/nvim-web-devicons'
    }

    use {
  'kdheepak/tabline.nvim',
  config = function()
    require'tabline'.setup {
      -- Defaults configuration options
      enable = true,
      options = {
      -- If lualine is installed tabline will use separators configured in lualine by default.
      -- These options can be used to override those settings.
        section_separators = {'', ''},
        component_separators = {'', ''},
        max_bufferline_percent = 66, -- set to nil by default, and it uses vim.o.columns * 2/3
        show_tabs_always = false, -- this shows tabs only when there are more than one tab or if the first tab is named
        show_devicons = true, -- this shows devicons in buffer section
        show_bufnr = false, -- this appends [bufnr] to buffer section,
        show_filename_only = false, -- shows base filename only instead of relative path in filename
        modified_icon = "+ ", -- change the default modified icon
        modified_italic = false, -- set to true by default; this determines whether the filename turns italic if modified
        show_tabs_only = false, -- this shows only tabs instead of tabs + buffers
      }
    }
    vim.cmd[[
      set guioptions-=e " Use showtabline in gui vim
      set sessionoptions+=tabpages,globals " store tabpages and globals in session
    ]]
  end,
  requires = { { 'hoob3rt/lualine.nvim', opt=true }, {'kyazdani42/nvim-web-devicons', opt = true} }
}
end)
