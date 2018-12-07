execute pathogen#infect()
let python_highlight_all=1
syntax on
filetype plugin indent on
set rtp+=~/.local/lib/python2.7/site-packages/powerline/bindings/vim/
call pathogen#helptags()
set laststatus=2
set t_Co=256
set number
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
set encoding=utf-8

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
"Plugin 'jnurmine/Zenburn'
"Plugin 'altercation/vim-colors-solarized'
call vundle#end()            " required
filetype plugin indent on    " required

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"set background=dark
"colorscheme solarized
