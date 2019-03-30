set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'hashivim/vim-terraform'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Bundle 'Valloric/YouCompleteMe'

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"syntax to set macro named a
let @a='0fa'
 
"indent
set tabstop=4
set shiftwidth=4

"set color to zenburn
set t_Co=256
colorscheme zenburn
set hlsearch
 
"dictionary shortcuts
set nospell
nmap T :set nospell<cr>
nmap t :set spell spelllang=en_us<cr>
 
"Ctrl+s to save
map <C-s> :w<cr>
imap <C-s> <ESC>:w<cr>a
"Ctrl+q to quit, hold shift to discard changes
map <C-q> :q<cr>
imap <C-q> <ESC>:q<cr>
map <C-S-q> :q!<cr>
imap <C-S-q> <ESC>:q!<cr>
 
"pig syntax highlighting
augroup filetypedetect
  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig
augroup END

filetype plugin on
set encoding=utf-8

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

highlight BadWhitespace guibg=red ctermbg=darkred

au BufNewFile,BufRead *.py |
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set nu

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']
let g:terraform_align=1
let g:terraform_commentstring='//%s'
let g:terraform_fmt_on_save=1

set cmdheight=2

let python_highlight_all=1
syntax on


