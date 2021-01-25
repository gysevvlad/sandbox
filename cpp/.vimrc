set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'preservim/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

set laststatus=2

let g:airline_powerline_fonts = 1
let g:airline_theme='zenburn'


nnoremap <leader>gt :YcmCompleter GoTo<CR>


filetype on


set number
colorscheme zenburn
syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list
set autoindent
set colorcolumn=80