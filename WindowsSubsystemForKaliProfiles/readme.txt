# 中科大源
deb https://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib
deb-src https://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib


# 软件安装
sudo apt-get update && sudo apt-get install vim git cmatrix figlet lolcat sl zsh screenfetch neofetch openjdk-11-jdk python3 gcc g++


# .vimrc
let mapleader=" "
syntax on


set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase



set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8
let &t_ut=''
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set foldmethod
set foldlevel=99
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif



noremap i k
noremap k j
noremap j h
noremap n i
noremap N I

noremap = nzz
noremap - Nzz
noremap <LEADER> :nohlsearch


map s <nop>
map S :w<CR>
map Q :wq<CR>
map R :source $MYVIMRC<CR>
map ; :

map 66 :set nosplitright<CR>:vsplit<CR>
map 67 :set splitright<CR>:vsplit<CR>
map 76 :set nosplitbelow<CR>:split<CR>
map 77 :set splitbelow<CR>:split<CR>

map <LEADER>i <C-w>k
map <LEADER>k <C-w>j
map <LEADER>j <C-w>h
map <LEADER>l <C-w>l

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

map tn :tabe<CR>
map t- :-tabnext<CR>
map t= :+tabnext<CR>


call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

" File navigation
Plug 'scrooloose/nerdtree',{ 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Error checking
Plug 'w0rp/ale'

" Auto Complete
Plug 'Valloric/YouCompleteMe'

call plug#end()


color snazzy
let g:SnazzyTransparent = 1


" ===
" === NERDTree
" ===
map ff :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = ""
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "p"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"

" ===
" === You Complete ME
" ===
nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap g/ :YcmCompleter GetDoc<CR>
nnoremap gt :YcmCompleter GetType<CR>
nnoremap gr :YcmCompleter GoToReferences<CR>
let g:ycm_autoclose_preview_window_after_completion=0
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_use_clangd = 0
let g:ycm_python_interpreter_path = "/bin/python3"
let g:ycm_python_binary_path = "/bin/python3"


#.zshrc(alias)
alias c="clear"
alias ll="ls -al"
alias cls="clear&ls -al"
alias lc="lolcat"
alias cm="cmatrix"
alias install="apt-get install"
alias update="apt-get update"
alias upgrade="apt-get upgrade"
alias git-log="git log --pretty=oneline --all --graph --abbrev-commit"
alias nf="neofetch"
alias sf="screenfetch"
alias jc="javac"
alias ja="java"