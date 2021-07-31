" Set some editor parameters
set number
set encoding=utf-8
set nowrap

" Plugin manager auto install
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline-themes'
" Better Visual Guide
Plug 'Yggdroot/indentLine'
" syntax check
Plug 'w0rp/ale'
" Autocomplete
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'
" Formatter
Plug 'Chiel92/vim-autoformat'
" Directory tree
Plug 'preservim/nerdtree'
" Python-specific
Plug 'jmcantrell/vim-virtualenv'
" Themes
Plug 'dracula/vim', {'as':'dracula'}
call plug#end()
filetype plugin indent on
colorscheme dracula

" Pseudo line limit but w/e
:set colorcolumn=80

" On Vim startup
autocmd StdinReadPre * let s:std_in=1
autocmd vimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
