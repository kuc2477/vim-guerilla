" NOT COMPATIBLE TO LEGACY VI VERSIONS
set nocompatible

"==============================VUNDLE======================================="

" configure runtime path based on machine's OS
if has('win32')
    set rtp+=~/vimfiles/bundle/Vundle.vim/
else
    set rtp+=~/.vim/bundle/Vundle.vim/
endif

filetype off
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'


"==============================Plugin List==================================="

" File system navigation
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jistr/vim-nerdtree-tabs'

" Fuzzy search
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'

" Auto completion
Plugin 'ervandew/supertab'

" Multiple cursor
Plugin 'terryma/vim-multiple-cursors'

" Surround
Plugin 'tpope/vim-surround'

" Colorschemes
Plugin 'flazz/vim-colorschemes'

call vundle#end()
filetype plugin indent on


"=============================Plugin Settings================================="

"THE-NERD-TREE
let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_autoclose = 1
map <C-u> :NERDTreeTabsToggle<CR>

"EASY-MOTION
let g:EasyMotion_smartcase = 1
nmap <leader>f <Plug>(easymotion-sn)

"CTRLP
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = {'dir': '*_build$'}


"============================General Settings================================"

" Default colorscheme
set background=dark
colorscheme wombat256i
syntax on

" Default encoding - change default encoding as you want
set enc=utf-8

" Terminal
if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif

" Keystroke timeout
set timeoutlen=1500

" Indentations to fallback
set expandtab
set smarttab
set smartindent
set shiftwidth=4
set tabstop=4

" Search behaviour
set hlsearch
set incsearch
set magic

" UI
set nu
set colorcolumn=79
highlight ColorColumn ctermbg=235

" Split navigation
nnoremap <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Key mappings
map <F9> :tabnew<CR>
map <F10> :tabclose<CR>
nnoremap <tab> :tabnext<CR>
nnoremap <S-tab> :tabprevious<CR>
nnoremap - :vertical res -10<CR>
nnoremap = :vertical res +10<CR>
nnoremap <leader>- :res -20<CR>
nnoremap <leader>= :res +20<CR>

" Lang specific indentations
au FileType sh setl ts=2 sw=2 sts=2
au FileType bash setl ts=2 sw=2 sts=2
au FileType haskell setl sw=2
au FileType javascript setl ts=2 sw=2 sts=2
au FileType html setl ts=2 sw=2 sts=2
au FileType css setl ts=2 sw=2 sts=2
au FileType scss setl ts=2 sw=2 sts=2
au FileType sass setl ts=2 sw=2 sts=2
au FileType less setl ts=2 sw=2 sts=2

" Filetype miscs
au! BufRead,BufNewFile *.wsgi setfiletype python
au! BufRead,BufNewFile *.less setfiletype less
