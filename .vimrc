set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'kchmck/vim-coffee-script'
Plugin 'elzr/vim-json'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_folding_disabled = 1
Plugin 'othree/html5-syntax.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'tomlion/vim-solidity'
Plugin 'tpope/vim-fugitive'
Plugin 'posva/vim-vue'
autocmd FileType vue syntax sync fromstart
let g:vue_disable_pre_processors=1
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'

Plugin 'vim/killersheep'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" NERDTree
nmap <leader>n :NERDTreeToggle<cr>
function! OpenNERDTree() " Open NERDTree if no file specified on startup
    if 0 == argc()
        NERDTree
    end
endfunction
autocmd VimEnter * call OpenNERDTree()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Vim-Airline
set laststatus=2

" colorscheme aqua
" colorscheme solarized
" colorscheme zenburn

syntax enable

runtime macros/matchit.vim

set number

set nowrap

set hlsearch

set ignorecase
set smartcase

set expandtab
set shiftwidth=2
set softtabstop=2

set mouse=a

autocmd Filetype javascript setlocal ts=2 sw=2 sts=2
autocmd Filetype typescript setlocal ts=2 sw=2 sts=2
autocmd BufRead,BufNewFile */home/devin/programming/Land-Portal/* setlocal ts=4 sw=4 sts=4
autocmd BufRead,BufNewFile */home/devin/programming/Metabuild/metabuild-converter/* setlocal ts=4 sw=4 sts=4
autocmd! BufNewFile,BufRead *.pde setlocal filetype=arduino
autocmd! BufNewFile,BufRead *.ino setlocal filetype=arduino
autocmd! BufNewFile,BufRead *.md  setlocal filetype=markdown
autocmd! BufNewFile,BufRead *.ejs setlocal filetype=html

func! WordProcessor()
  " movement changes
  map j gj
  map k gk
  " formatting text
  setlocal formatoptions=1
  setlocal wrap
  setlocal linebreak
  " spelling and thesaurus
  setlocal spell spelllang=en_us
  set thesaurus+=/home/test/.vim/thesaurus/mthesaur.txt
  " complete+=s makes autocompletion search the thesaurus
  set complete+=s
endfu
com! WP call WordProcessor()
