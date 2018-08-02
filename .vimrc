set nocompatible              " be iMproved, required

filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'itchyny/lightline.vim'
Plugin 'nightsense/snow'

Plugin 'sheerun/vim-polyglot'
Plugin 'Valloric/YouCompleteMe'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
colorscheme snow

set background=dark
set termguicolors
set number
set ts=4 sw=4 et
set backspace=indent,eol,start
set autoindent
" set spell spelllang=en_us
" highlight LineNr ctermbg=0

set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'snow_dark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

nnoremap <Leader>f :NERDTree <CR>
nnoremap <Leader>p :CtrlP <CR>
nnoremap <Leader>t :TagbarToggle <CR>
nnoremap <Leader>n :tabnew <CR>
nnoremap <Leader>l :set invnumber <CR>
