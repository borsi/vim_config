" Vundle initialization
set nocompatible	" be iMproved
filetype off		" required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here
" 
" original repos on github
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'wincent/Command-T'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'garbas/vim-snipmate'
Bundle 'ervandew/supertab'
Bundle 'vim-scripts/buftabs'
Bundle 'rstacruz/sparkup'
Bundle 'tomasr/molokai'
Bundle 'skammer/vim-css-color'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'tomtom/tlib_vim'
" ...
" ide stuff
" ...

" vim-scripts repos
"Bundle 'dbext.vim'

" non github repos

" ...
filetype plugin indent on "required!
"
" Brief help
" :BudleList		- list configured bundles
" :BundleInstall(!) 	- install(undape) bundles
" :BundleSearch(!) foo	- search(or refresh cache first) for foo
" :BundleClean(!)	- confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"
" Vundle end

" General
filetype plugin indent on
set autoread
set ruler

" Ignore compiled files
set wildignore=*.o,*.~,*.pyc
set noerrorbells
set novisualbell

" Looks
syntax enable
set background=dark
colorscheme molokai
set ts=2 sw=4 noet
set guifont=Deja\ Vu\ Sans\ Mono\ 11
set encoding=utf8

" Navigation
:inoremap jj <ESC>
" Toggle between relativenumber and number
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>


" Navigation for Buftabs
:noremap <C-left> :bprev<CR>
:noremap <C-right> :bnext<CR>

" Navigation between vertical splits
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" Miscellaneous stuff
set number

set expandtab

set smarttab

set shiftwidth=4
set tabstop=4

set lbr
set tw=500

set ai "auto indent
set si "smart indent
set wrap "wrap lines

" Buffers

" Close current buffer
map <leader>bd :Bclose<CR>
" Close all the buffers
map <leader>ba :1,1000 bd!<CR>

" Start nerdtree in the beginning,
nmap <silent> <special> <F2> :NERDTreeToggle<RETURN>


" Enable indent guides
let g:indent_guides_enable_on_vim_startup = 1
