let mapleader = " "

filetype on
filetype plugin indent on
set synmaxcol=200

set encoding=UTF-8

syntax on
set nocompatible
set number relativenumber
set laststatus=2
set vb
set ruler
set spelllang=en_us
set colorcolumn=80
" set colorcolumn=200
set mouse=a
set clipboard=unnamed
set noscrollbind
set wildmenu
set autochdir
" Highlight current line
set cursorline
:highlight Cursorline cterm=bold ctermbg=black
" Enagle highlight search pattern "
set hlsearch
" Enable smartcase search sensitivity
set ignorecase
set smartcase

" Spaces as dots

set list
" set listchars=eol:↓,tab:\ \ ┊,trail:●,extends:…,precedes:…,space:·
set listchars=eol:⏎,tab:\ \ ┊,trail:●,extends:…,precedes:…,space:·

" split style
" set fillchars=vert:▒

hi Search cterm=NONE ctermfg=black ctermbg=red

" Indentation using spaces "
set tabstop	=4 " tabstop:	width of tab character
set softtabstop	=4 " softtabstop:	fine tunes the amount of whitespace to be added
set shiftwidth	=4 " shiftwidth:	determines the amount of whitespace to add in normal mode
set textwidth	=79 " textwidth:	text wrap width
set expandtab " expandtab:	when on use space instead of tab
" set autoindent " autoindent:	autoindent in new line

" show the matching part of pairs [] {} and () "
set showmatch

" remove trailing whitespace from Python and Fortran files "
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.f90 :%s/\s\+$//e
autocmd BufWritePre *.f95 :%s/\s\+$//e
autocmd BufWritePre *.for :%s/\s\+$//e

" enable color themes "
if !has('gui_running')
	set t_Co=256
endif

" No more Arrow Keys, deal with it
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" netrw
" nnoremap - :Explore<CR>
" let g:netrw_banner = 0
" let g:netrw_liststyle = 3
" let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
" autocmd FileType netrw setl bufhidden=delete
"-- netrw END

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" End NERDTree

" Tabs
nnoremap <C-j> :tabprevious<CR> 
nnoremap <C-k> :tabnext<CR>
" End Tabs

" Reload Config
nnoremap <Leader>r :source $MYVIMRC<CR>

" plug 
call plug#begin()
"> Must Have
Plug 'vim-airline/vim-airline' " https://github.com/vim-airline/vim-airline
Plug 'ctrlpvim/ctrlp.vim'      " https://github.com/ctrlpvim/ctrlp.vim
Plug 'ryanoasis/vim-devicons'  " https://github.com/ryanoasis/vim-devicons + https://github.com/ryanoasis/nerd-fonts/
Plug 'tpope/vim-commentary'    " https://github.com/tpope/vim-commentary
Plug 'airblade/vim-gitgutter'  " https://github.com/airblade/vim-gitgutter
Plug 'mkitt/tabline.vim'       " https://github.com/mkitt/tabline.vim

" Vim-Poligot
Plug 'sheerun/vim-polyglot' " https://vimawesome.com/plugin/vim-polyglot

" Telescope requirements...
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " FZF
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" LSP completion source for nvim-cmp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
" Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }
Plug 'onsails/lspkind-nvim'
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'williamboman/mason.nvim'

"> Go
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' } " https://github.com/fatih/vim-go
Plug 'neoclide/coc.nvim', {'branch': 'release'}     " https://github.com/neoclide/coc.nvim
Plug 'SirVer/ultisnips'                             " https://github.com/sirver/UltiSnips
Plug 'darrikonn/vim-gofmt'

"> Rust
Plug 'simrat39/rust-tools.nvim'
Plug 'rust-lang/rust.vim'

"> Themes
Plug 'gruvbox-community/gruvbox' " Gruvbox theme
Plug 'luisiacc/gruvbox-baby'
Plug 'NLKNguyen/papercolor-theme' " https://github.com/NLKNguyen/papercolor-theme
Plug 'jim-at-jibba/ariake-vim-colors' 
Plug 'sainnhe/sonokai'
Plug 'sainnhe/gruvbox-material'
Plug 'shaunsingh/nord.nvim'
Plug 'cocopon/iceberg.vim'
Plug 'jim-at-jibba/ariake-vim-colors'
Plug 'catppuccin/nvim', {'as': 'catppuccin'} " https://github.com/catppuccin/nvim
Plug 'tpope/vim-projectionist'
Plug 'tomlion/vim-solidity'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' } " https://github.com/folke/tokyonight.nvim
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'preservim/nerdtree'
call plug#end()

"-- plug END

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" vim-gitgutter
set updatetime=500
"-- vim-gitgutter END

" Color selecction
" papercolor-theme
set termguicolors
set background=dark
" Set color scheme to gruvbox
" colorscheme gruvbox
" colorscheme iceberg
colorscheme tokyonight
filetype plugin indent on
set background=dark

highlight Normal guibg=none
" colorscheme PaperColor
"-- papercolor-theme END 

map <leader>nt :Ntree<cr>

" Telescope
" Vertical layout
" theme=require('telescope.themes').get_ivy()
" theme['find_command'] = opts.find_command
" theme['layout_config']['height'] = 10
" require('telescope.builtin').find_files(theme)
" nnoremap <Leader>f :lua require'telescope.builtin'.find_files(theme)<cr>
" Horizontal layout
" nnoremap <Leader>f :lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({}))<cr>

nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>
nnoremap <leader>pv :Ex<CR>
nnoremap <Leader>cpu a%" PRIu64 "<esc>

" New
au FileType gitcommit setlocal ts=4 " otherwise the builtin default of 8 kicks in
au FileType mail silent setl ft=mail tw=72 fo+=tn comments+=fb:*
au FileType mail silent /^$
au FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

au BufEnter testdata/*.txt silent setl ft=sh
nnoremap <space> :noh<cr>:echo<cr><esc>


" All LUA configuration withing this block
lua <<EOF
-- TREESITTER
require'nvim-treesitter.configs'.setup {
  highlight = {
    ensure_installed = { "bash", "lua", "rust", "yaml", "dockerfile", "hcl", "go", "gomod", "json", "nix", "python", "vim" },
    enable = true,
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      ["foo.bar"] = "Identifier",
    },
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

require'nvim-treesitter.configs'.setup {
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
}

require('telescope').setup{
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_prefix = "> ",
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        mirror = false,
      },
      vertical = {
        mirror = false,
      },
    },
    file_sorter =  require'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = {},
    generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
    winblend = 0,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    color_devicons = true,
    use_less = true,
    path_display = {},
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
  }
}
EOF

" nnoremap <Leader>f :lua require'telescope.builtin'.find_files(theme)<cr>
nnoremap <Leader>f :lua require'telescope.builtin'.find_files()<cr>
nnoremap <Leader>n :lua require'telescope.builtin'.treesitter(require('telescope.themes').get_dropdown({}))<cr>
