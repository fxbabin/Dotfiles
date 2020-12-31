"""""""""""""""
"   PLUGINS   "
"""""""""""""""

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'josuegaleas/jay'
Plugin 'dense-analysis/ale'

call vundle#end()

"""""""""""
"   SET   "
"""""""""""

set mouse=a
set nu
set listchars=eol:$,tab:>-,trail:-
set list
set nocompatible        " be iMproved, required for Vundle
filetype off            " required for Vundle

"Tab control
""""""""""""""
set tabstop=4 shiftwidth=4 expandtab
set smarttab            " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set softtabstop=4       " edit as if the tabs are 4 characters wide
set shiftround          " round indent to a multiple of 'shiftwidth'

syntax on
set encoding=utf8
set t_Co=256            " set 256 colors in the terminal

set ignorecase          " case insensitive searching
set smartcase           " case-sensitive if expresson contains a capital letter

set autoindent          " automatically set indent of new line
set smartindent         " automatically inserts one extra level of indentation

set background=dark
colorscheme jay

"All characters after the 80th column are highlighted
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.*/

" Disablingd Arrow keys in all modes
""""""""""""""""""""""""""""""""""""
map Q <Nop>
set hlsearch
hi Search ctermbg=LightYellow
hi Search ctermfg=Black
