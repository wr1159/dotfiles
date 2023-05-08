set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on

set clipboard=unnamed
set relativenumber
set number

set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent

set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

let mapleader = ","
nnoremap <leader>c :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <leader>q :!zathura <C-r>=expand('%:r')<cr>.pdf &<cr>")
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'
Plug 'vim-scripts/delimitMate.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdtree'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
" Initialize plugin system"
call plug#end()

"let g:vimtex_view_method='zathura'
let g:vimtex_view_method='skim'
"let g:vimtex_view_general_view='zathura'
let g:vimtex_quickfix_mode=0
let g:rainbow_active = 1

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
