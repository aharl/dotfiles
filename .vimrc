" Forget being compatible with good ol' vi
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Bundle 'tpope/vim-fugitive'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'bling/vim-airline'
Bundle 'jlanzarotta/bufexplorer'
Bundle 'mustache/vim-mustache-handlebars'
Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Raimondi/delimitMate'
Bundle 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'primedirective/Glacier-Remixes', {'rtp': 'vim/'}
Plugin 'flazz/vim-colorschemes'
Plugin 'editorconfig/editorconfig-vim'
" SnipMate -- Boo Yah!
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"

" plugin from http://vim-scripts.org/vim/scripts.html
Bundle 'L9'
Bundle 'FuzzyFinder'

" Git plugin not hosted on GitHub
" Bundle 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Turn on that syntax highlighting
syntax enable

" Why is this not a default
set hidden

" Don't update the display while executing macros
set lazyredraw

" At least let yourself know what mode you're in
set showmode

" No swapfiles
set noswapfile

" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu.  See :help 'wildmenu'
set wildmenu

" Indentation
set autoindent
set smartindent

" Change the mapleader from \ to ,
let mapleader=","

" Let's make it easy to edit this file (mnemonic for the key sequence is
" 'e'dit 'v'imrc)
nmap <silent> \ev :e $MYVIMRC<cr>

" And to source this file as well (mnemonic for the key sequence is
" 's'ource 'v'imrc)
nmap <silent> \sv :so $MYVIMRC<cr>

" Tabstops
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent


" UI Settings
set number
set relativenumber
set lines=57 columns=140
set background=dark
colorscheme molokai
if has("gui_running")
	set guifont=Source\ Code\ Pro\ for\ Powerline:h13
endif

" Airline Settings
let g:airline_powerline_fonts=1
set laststatus=2 " This lets airline show all the time, not just when you have a split window

" NerdTree Settings
map <leader>nt :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1

" Mustache Settings
let g:mustache_abbreviationsl=1

" Multi Cursor Setup
let g:multi_cursor_next_key='\n'
let g:multi_cursor_prev_key='\p'
let g:multi_cursor_skip_key='\x'
