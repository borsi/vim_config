" Vundle initialization
set nocompatible	" be iMproved
filetype off		" required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" My Bundles here
" 
" original repos on github
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'wincent/Command-T'
Plugin 'vim-scripts/buftabs'
Plugin 'rstacruz/sparkup'
Plugin 'skammer/vim-css-color'

" snipmate reqs
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
" Plugin 'adimit/prolog.vim'

" for automatically closing parantheses
Plugin 'Raimondi/delimitMate'
" ...
" ide stuff
" ...
" Bundle 'docteurklein/vim-symfony'
"Bundle 'arnaud-lb/vim-php-namespace'

" plugin for beautiful lightline
Plugin 'itchyny/lightline.vim'

" Colorschemes
Plugin 'tomasr/molokai'
Plugin 'joshdick/onedark.vim'
Plugin 'whatyouhide/vim-gotham'
Plugin 'tristanheaven/vim-colorscheme-aquamarine'
Plugin 'morhetz/gruvbox'

" tabular
Plugin 'godlygeek/tabular'

" vim-fugitive
Plugin 'tpope/vim-fugitive'

" code autocompletion
" Bundle 'davidhalter/jedi-vim'

" syntastic for syntax errors
Plugin 'scrooloose/syntastic'

" for typescript
Plugin 'leafgarland/typescript-vim'
Plugin 'HerringtonDarkholme/yats.vim'

"YouCompleteMe
Plugin 'Valloric/YouCompleteMe'
" vim-scripts repos
"Bundle 'dbext.vim'

" For Fuzzy search
Plugin 'ctrlpvim/ctrlp.vim'
" non github repos

" ...
"filetype plugin indent on 

"required!
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

call vundle#end()

filetype plugin indent on

" General
set autoread
set ruler

" Ignore compiled files
set wildignore=*.o,*.~,*.pyc
set noerrorbells
set novisualbell
:set vb t_vb= 

" Looks
" syntax enable
syntax on
" set background=dark
colorscheme gruvbox
set ts=2 sw=4 noet
set guifont=Consolas:h12:cANSI
set encoding=utf8

" Snipmate trigger
let g:snippets_dir="$HOME/.vim/bundle/vim-snippets/snippets"
:imap <Tab> <Plug>snipMateNextOrTrigger

" Navigation
:inoremap jj <ESC>
"
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

" XML formatting
map <F5> :%s/<\([^>]\)*>/\r&\r/g<enter>:g/^$/d<enter>vat=
map <F6> vatJxvito<right><left>x
map <F7> /\v^\s*([a-zA-Z\-0-9\$])<enter>qm<F6>nq@q1000@@:1<enter>


" Buffers

" Close current buffer
map <leader>bd :Bclose<CR>
" Close all the buffers
map <leader>ba :1,1000 bd!<CR>

" Start nerdtree in the beginning,
nmap <silent> <special> <F2> :NERDTreeToggle<RETURN>

" Lightline config
let g:lightline = {
    \ 'colorscheme': 'gruvbox',
    \ }
set laststatus=2


" syntastic default config
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" vim fugitive vertical diff windows
set diffopt+=vertical


" Remove window widgets
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

" Snipmate to different key
:imap <C-J> <Plug>snipMateNextOrTrigger
:smap <C-J> <Plug>snipMateNextOrTrigger

" Weird Vundle issue, call vundle manually
call vundle#config#require(g:vundle#bundles)

