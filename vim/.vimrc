"Must have global settings
set encoding=utf-8
set fileencoding=utf-8
set nocompatible
let mapleader=','

" ----------------------------------------------------------------------------
" Source in some extra vimrcs
" ----------------------------------------------------------------------------
syntax on
filetype plugin indent on
source ~/.vim/pack_vimrc/ctrlp/.vimrc
source ~/.vim/pack_vimrc/nerdcommenter/.vimrc
"source ~/.vim/pack_vimrc/syntastic/.vimrc 
source ~/.vim/pack_vimrc/vim-airline-themes/.vimrc 
source ~/.vim/pack_vimrc/vim-monokai/.vimrc 
source ~/.vim/pack_vimrc/YouCompleteMe/.vimrc
source ~/.vim/pack_vimrc/molokai/.vimrc
source ~/.vim/pack_vimrc/nerdtree/.vimrc 
source ~/.vim/pack_vimrc/rust.vim/.vimrc     
source ~/.vim/pack_vimrc/vim-airline/.vimrc
source ~/.vim/pack_vimrc/vim-buffergator/.vimrc  
source ~/.vim/pack_vimrc/vim-numbertoggle/.vimrc

" ----------------------------------------------------------------------------
" Personal settings
" ----------------------------------------------------------------------------
set hidden       "When a buffer is abandoned then unload the buffer
set autoread     "auto-reload the file if it is detectedd as changed
set autochdir    "change to the directoy which contains the open file

set smarttab     "when tab is pressed use tabstop number of spaces
set tabstop=2    "number of spaces a tab in the file counts for
set shiftwidth=2 "number of spaces to use for each auto-indent
set expandtab    "expand a tab characters into the space chars
set autoindent   "automatically indent when starting a new line
set smartindent  "do c-like indenting when possible

"makes insert-mode backspace work as expected
"makes insert-mode arrow keys work as expected
set backspace=indent,eol,start  whichwrap+=<,>,[,],h,l 

set history=50           "keep up to 50 lines in the command-mode history
set nobackup             "Do not create a backup before over-writing a file
set backupdir=~/.vimbak  "Where to write backups to if you do write them
set directory=~/.vimswap "Where to keep vim .swap files
set undodir=~/.vimundo   "Where to keep vim undo files

set ruler               "show the line and columns number in the bottom status
set colorcolumn=80,100  "color column 80 and column 100
set number              "print the line number in the left-margin
set numberwidth=2       "number of columns to use to dispaly the number
set cursorline          "highlight the linet he cursor is currently on

set showcmd         "show partial-comands in the bottom bar
set incsearch       "As you do '/' comamnds serach, highlight the findings
set wildmenu        "in command-mode, pressing tab show sugests in line above
set timeoutlen=350  "time in ms to wait for a key mapped seq to complete

set nomodeline             "Disable reading modeline snppets from the file
set mouse=a                "Enable the mouse"
let loaded_matchparen=1  "Disable '{' highlight matching

" -----------------------------------------------------------------------------
" Custom key-mappings
" i - insert mode
" n - normal mode
" v - visual mode
" noremap - means to no-resursive map.
" not the "|" character at the end of the lines ends the character sequence.
" This is so that I can write inline comments.
" -----------------------------------------------------------------------------

"map <space> <leader>      "Map the space key to the leader key as well
"inoremap <C-Space> <C-[>  "Ctrl+[ is the ESC key, we map it to CTRL + space
"inoremap <C-Space> <C-x><C-o>  "Remap CTRL-space to omnicomplete
"inoremap <C-@> <C-Space>|      "Remap <NUL> char to <CTRL-space>
inoremap jk <C-[>|    "Map "j + k" to ESC in insert-mode
vnoremap jk <C-[>|    "Map "j + k" to ESC in visual mode
nnoremap <C-J> <C-E>| "Map "CTRL + j" to line scrolling down in normal mode
nnoremap <C-K> <C-Y>| "Map "Ctrl + k" to line scrolling up in normal mode
nnoremap HH H|        "Map "H + H" to go to the top of the visible screen
nnoremap MM M|        "Map "M + M" to go to the middle of the visible screen
nnoremap LL L|        "Map "L + L" to go to the bottom of the visible scren
nnoremap H ^|         "Map "H" to go the first character of the line
nnoremap L $|         "Map "L" to go the last charcter of the line

command! W write      "Set the comand :W to do a write

"In insert allows you to use hjkl to move around by pressing <CTRL-blah>
"The <C-o> in insert mode is a special hotkey which puts you back into normal
"mode for one command and then transfers you back into insert mode.
inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l

" ---------------------------------------------------------------------------
" Make things look fancy.
" ---------------------------------------------------------------------------
syntax enable
colorscheme monokai
colorscheme molokai

"-----------------------------------------------------------------------------
" Neovim specific settings
" ----------------------------------------------------------------------------
if has('nvim')
  source ~/.vim/.neovimrc
endif

" ----------------------------------------------------------------------------
" Classic Vim specific settings
" ----------------------------------------------------------------------------
if !has('nvim')
  source ~/.vim/.classicvimrc
endif
