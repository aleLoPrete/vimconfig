syntax on
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set cursorline
set colorcolumn=80
set encoding=utf-8
set modifiable
highlight ColorColumn ctermbg=0 guibg=lightgrey
" just my plugins
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'Chiel92/vim-autoformat'
Plug 'ycm-core/Youcompleteme'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8' " for pip8 checking (python)
Plug 'https://github.com/ctrlpvim/ctrlp.vim' " fuzzy file finder
call plug#end()

colorscheme gruvbox
set background=dark

" remapping split switching with more intuitive key bindings
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
noremap <C-l> <C-W>l
" enabling normal mode in terminal split windows
tnoremap <Esc> <C-\><C-n>

" shortcut for CtrlP
nnoremap <C-c> :CtrlP 

" Flagging unncessary white spaces
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" make code look pretty for python
let python_highlight_all=1
