vim.cmd [[packadd packer.nvim]]
local is_bootstrap = false

require('packer').startup(function(use)
  ----------------------------------------------------------------------------
  -- Must Have
  use 'vim-airline/vim-airline' -- https://github.com/vim-airline/vim-airline
  use 'ctrlpvim/ctrlp.vim' --  https://github.com/ctrlpvim/ctrlp.vim

  -- Git
  use 'tpope/vim-commentary' --  https://github.com/tpope/vim-commentary
  use 'airblade/vim-gitgutter' --  https://github.com/airblade/vim-gitgutter
  use 'mkitt/tabline.vim' --  https://github.com/mkitt/tabline.vim
  -- use 'tommcdo/vim-fugitive-blame-ext' -- https://github.com/tommcdo/vim-fugitive-blame-ext

  use 'akinsho/nvim-bufferline.lua' -- https://github.com/akinsho/bufferline.nvim
  use 'lewis6991/gitsigns.nvim' -- https://github.com/lewis6991/gitsigns.nvim
  use 'dinhhuy258/git.nvim' -- For git blame & browse

  ----------------------------------------------------------------------------
  -- Vim-Poligot
  use 'sheerun/vim-polyglot' -- https://vimawesome.com/plugin/vim-polyglot

  ----------------------------------------------------------------------------
  -- Telescope requirements...
  use 'junegunn/fzf' -- FZF
  use 'nvim-lua/popup.nvim'
  -- use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope-fzy-native.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' } } }
  use 'tpope/vim-surround' -- surround characters shortcuts
  -- use 'nvim-telescope/telescope.nvim'
  -- use 'tpope/vim-eunuch' -- wrappers UNIX commands
  -- use 'tpope/vim-vinegar' -- file browser

  ----------------------------------------------------------------------------
  -- LSP completion source for nvim-cmp
  -- use {
  --   'neovim/nvim-lspconfig', -- Configurations for Nvim LSP
  --   'williamboman/mason-lspconfig.nvim',
  -- }

  -- https://github.com/omerxx/dotfiles/blob/master/nvim/init.lua#L56
  use { -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
     requires = {
       -- Automatically install LSPs to stdpath for neovim
       'williamboman/mason.nvim',
       'williamboman/mason-lspconfig.nvim',

       -- Useful status updates for LSP
       'j-hui/fidget.nvim',
     },
  }
  
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      --- Uncomment these if you want to manage LSP servers from neovim
      -- {'williamboman/mason.nvim'},
      -- {'williamboman/mason-lspconfig.nvim'},
  
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    }
  }
  ----------------------------------------------------------------------------
  -- Autocompletion
  use 'hrsh7th/nvim-cmp' -- https://github.com/hrsh7th/nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'saadparwaiz1/cmp_luasnip'

  -- Add from example config
  use 'hrsh7th/cmp-path' -- https://github.com/hrsh7th/nvim-cmp
  use 'hrsh7th/cmp-cmdline'
  use 'onsails/lspkind-nvim'
  use 'nvim-lua/lsp_extensions.nvim'

  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'

  ----------------------------------------------------------------------------
  --  Go
  use 'fatih/vim-go' -- https://github.com/fatih/vim-go
  -- use 'neoclide/coc.nvim'  -- https://github.com/neoclide/coc.nvim
  -- use {'neoclide/coc.nvim', branch = 'master', run = 'yarn install --frozen-lockfile'}
  -- use { 'neoclide/coc.nvim', { branch = 'release' } } -- https://github.com/neoclide/coc.nvim
  use 'SirVer/ultisnips' -- https://github.com/sirver/UltiSnips
  use 'darrikonn/vim-gofmt'

  -- https://github.com/ray-x/go.nvim
  use 'ray-x/go.nvim'
  use 'ray-x/guihua.lua' -- recommanded if need floating window support

  ----------------------------------------------------------------------------
  -- Rust
  use 'simrat39/rust-tools.nvim'
  use 'rust-lang/rust.vim'

  ----------------------------------------------------------------------------
  -- Themes - commented those that I'm currently not using
  -- use 'gruvbox-community/gruvbox' -- Gruvbox theme
  -- use 'luisiacc/gruvbox-baby'
  -- use 'NLKNguyen/papercolor-theme' -- https://github.com/NLKNguyen/papercolor-theme
  -- use 'sainnhe/sonokai'
  -- use 'sainnhe/gruvbox-material'
  -- use 'shaunsingh/nord.nvim'
  -- use 'cocopon/iceberg.vim'
  -- use 'jim-at-jibba/ariake-vim-colors'
   use { "catppuccin/nvim", as = "catppuccin" } -- https://github.com/catppuccin/nvim
  -- use 'tpope/vim-projectionist'
  -- use 'tomlion/vim-solidity'
  -- use 'folke/tokyonight.nvim' -- https://github.com/folke/tokyonight.nvim
  -- use { "EdenEast/nightfox.nvim", tag = "v1.0.0" }
  -- use {
  --   'svrana/neosolarized.nvim',
  --   requires = { 'tjdevries/colorbuddy.nvim' }
  -- }

  use { -- Fancier statusline
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  ----------------------------------------------------------------------------
  -- Tree file viewer
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'ryanoasis/vim-devicons' -- NERDTREE icons
  use 'windwp/nvim-ts-autotag'
  use 'norcalli/nvim-colorizer.lua'

  ----------------------------------------------------------------------------
  -- Sidebar
  use 'preservim/nerdtree'

  ----------------------------------------------------------------------------
  -- Other
  use 'lukas-reineke/indent-blankline.nvim' -- Add indentation guides even on blank lines

  ----------------------------------------------------------------------------
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client
  use 'glepnir/lspsaga.nvim' -- LSP UIs
  -- use 'williamboman/mason.nvim' https://github.com/williamboman/mason.nvim
  use 'windwp/nvim-autopairs'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    --  run = ':TSUpdate'
  }

  ----------------------------------------------------------------------------
  use 'wbthomason/packer.nvim'
  -- use({
  --   "kylechui/nvim-surround",
  --   tag = "*", -- Use for stability; omit to use `main` branch for the latest features
  --   config = function()
  --       require("nvim-surround").setup({
  --           -- Configuration here, or leave empty to use defaults
  --       })
  --   end
  -- })

  ----------------------------------------------------------------------------
  -- Floating terminal: https://github.com/numToStr/FTerm.nvim
  use { 'numToStr/FTerm.nvim',
    config = function()
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }

    map('n', '<leader>tj', '<CMD>lua require("FTerm").toggle()<CR>', opts)
    map('t', '<leader>tj', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)
    require 'FTerm'.setup({
      blend = 18,
      dimensions = {
        height = 0.9,
        width = 0.9,
        x = 0.5,
        y = 0.5
      }
    })
    end
  }
  ----------------------------------------------------------------------------
  if is_bootstrap then
    require('packer').sync()
  end
end)

-- When we are bootstrapping a configuration, it doesn't
-- make sense to execute the rest of the init.lua.
--
-- You'll need to restart nvim, and then it will work.
if is_bootstrap then
  print '=================================='
  print '    Plugins are being installed'
  print '    Wait until Packer completes,'
  print '       then restart nvim'
  print '=================================='
  return
end
