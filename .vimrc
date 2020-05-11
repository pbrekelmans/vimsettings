set nocompatible
filetype off

"hard tabstop 2
set ts=2
set sts=2
set sw=2
set expandtab
set nowrap
set hlsearch

set title

set fillchars=vert:\│

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'

Plugin 'Lokaltog/vim-distinguished'
Plugin 'Lokaltog/powerline-fonts'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'bling/vim-airline'
Plugin 'sukima/xmledit'
Plugin 'scrooloose/nerdtree'
Plugin 'groenewege/vim-less'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'cespare/vim-toml'

call vundle#end()


filetype plugin indent on     " required!
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
set background=dark
colorscheme distinguished
let delimitMate_expand_cr = 1

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS

"in html files xmledit takes care of this
autocmd FileType html let b:delimitMate_autoclose = 0

let g:airline_powerline_fonts = 1

set laststatus=2
set number
set mouse=a
set pastetoggle=<F2>

if argc() == 1 && argv(0) == '.' " `vim .` called
  autocmd vimenter * NERDTree   " Start up NERDTree
  "autocmd vimenter * wincmd w   " Jump to split that file is open in
endif

"let g:NERDTreeDirArrows=0
let g:gitgutter_signs = 0



" Mijn eigen key mappings

map <F12> :NERDTreeToggle <CR>
