"Must have global settings
set encoding=utf-8
set fileencoding=utf-8
set nocompatible
let mapleader=','
map <space> <leader>

"Pathogen setup.
execute pathogen#infect()
syntax on
filetype plugin indent on

source $VIMRUNTIME/vimrc_example.vim
"source ~/.vim/mswin.vim

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

"All the .vimrc settings for different plugins
source ~/.vim/bundle_vimrc/ctrlp.vim/.vimrc
source ~/.vim/bundle_vimrc/NERDCommenter/.vimrc
source ~/.vim/bundle_vimrc/syntastic/.vimrc
source ~/.vim/bundle_vimrc/vim-airline/.vimrc
source ~/.vim/bundle_vimrc/vim-buffergator/.vimrc
"source ~/.vim/bundle_vimrc/vim-colors-solarized/.vimrc
"source ~/.vim/bundle_vimrc/vim-multiple-cursors/.vimrc
source ~/.vim/bundle_vimrc/nerdtree/.vimrc
source ~/.vim/bundle_vimrc/vim-nerdtree-tabs/.vimrc
source ~/.vim/bundle_vimrc/vim-monokai/.vimrc
source ~/.vim/bundle_vimrc/molokai/.vimrc
"source ~/.vim/bundle_vimrc/vim-go/.vimrc
source ~/.vim/bundle_vimrc/vim-numbertoggle/.vimrc

"Personal settings
set hidden
" Auto-reload the file.
set autoread
set autochdir
set nocompatible
set tabstop=2
set shiftwidth=2
set expandtab
set ruler
"set backspace=indent,eol,start whichwrap+=<,>,[,]
set backspace=indent,eol,start whichwrap+=<,>,[,],h,l
set smarttab
set ai
set si
set nobackup
set backupdir=~/.vimbak
set directory=~/.swap
set undodir=~/.vimundo
set wildmenu
set timeoutlen=350

"keymappings
inoremap <C-Space> <C-[>
inoremap jk <C-[>
vnoremap jk <C-[>
nnoremap <C-J> <C-E>
nnoremap <C-K> <C-Y>
nnoremap HH H
nnoremap LL L
nnoremap H ^
nnoremap L $

set colorcolumn=80
set number
set numberwidth=2

syntax enable
colorscheme monokai
colorscheme molokai
