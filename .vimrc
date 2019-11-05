"""""""""""""""""""""""""""""""
" My Awesome VIM Configuration
"""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
syntax on
set nowrap
set encoding=utf8

filetype off                  " required

"""""""""""""""""""
" Vundle Plugins
"""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'itchyny/lightline.vim'
Plugin 'arcticicestudio/nord-vim'

Plugin 'sheerun/vim-polyglot'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/async.vim'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'

call vundle#end()            " required
filetype plugin indent on    " required
"""""""""""""""""""


""""""""""""""""""" 
" Interface
"""""""""""""""""""
set mouse=a
set number
set ruler
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set laststatus=2
set cursorline
set t_Co=256
set term=xterm-256color
set termguicolors
set backspace=indent,eol,start
set autoindent
set noshowmode
set nomodeline
" set relativenumber
" set spell spelllang=en_us
" highlight LineNr ctermbg=0
"""""""""""""""""""


"""""""""""""""""""
" Directories
"""""""""""""""""""
set undodir=~/.vim/undo//
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
"""""""""""""""""""


"""""""""""""""""""
" Theme Config
"""""""""""""""""""
set background=dark
colorscheme nord

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
"""""""""""""""""""


"""""""""""""""""""
" Plugin Config
"""""""""""""""""""
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p
" autocmd VimEnter * nested :call tagbar#autoopen(1)
""""""""""""""""""
if executable('rls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'rls',
        \ 'cmd': {server_info->['rustup', 'run', 'stable', 'rls']},
        \ 'workspace_config': {'rust': {'clippy_preference': 'on'}},
        \ 'whitelist': ['rust'],
        \ })
endif

"""""""""""""""""""
" Keyboard Mapping
"""""""""""""""""""
nnoremap <Leader>f :NERDTree <CR>
nnoremap <Leader>p :CtrlP <CR>
nnoremap <Leader>t :TagbarToggle <CR>
nnoremap <Leader>n :tabnew <CR>
nnoremap <Leader>l :set invnumber <CR>
nnoremap <Leader>q :q!<CR>
vnoremap <Leader>y "*y
nnoremap <Leader><up> :tabr <CR>
nnoremap <Leader><down> :tabl <CR>
nnoremap <Leader><left> :tabp <CR>
nnoremap <Leader><right> :tabn <CR>

