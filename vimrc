" NOT COMPATIBLE TO LEGACY VI VERSIONS
set nocompatible

" VUNDLE
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'gmarik/Vundle.vim'


"==============================Plugin List==================================="

" file system navigation
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jistr/vim-nerdtree-tabs'

" fuzzy search
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'

" auto completion
Plugin 'ervandew/supertab'

" colorschemes
Plugin 'flazz/vim-colorschemes'


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

" default colorscheme
set background=dark
colorscheme wombat256i

" configure terminal
if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif

" keystroke timeout
set timeoutlen=1500

" default indentations to fallback
set expandtab
set smarttab
set smartindent
set shiftwidth=4
set tabstop=4

" configure search behaviour
set hlsearch
set incsearch
set magic					

" UI related configurations
set nu
set colorcolumn=79
highlight ColorColumn ctermbg=235

" key mappings
map <F9> :tabnew<CR>
map <F10> :tabclose<CR>
vnoremap <C-f> =
nnoremap <tab> :tabnext<CR>
nnoremap <S-tab> :tabprevious<CR>
nnoremap - :vertical res -10<CR>
nnoremap = :vertical res +10<CR>
nnoremap <leader>- :res -20<CR>
nnoremap <leader>= :res +10<CR>

" lang specific indentations
au FileType sh setl ts=2 sw=2 sts=2
au FileType bash setl ts=2 sw=2 sts=2
au FileType haskell setl sw=2 
au FileType javascript setl ts=2 sw=2 sts=2
au FileType html setl ts=2 sw=2 sts=2
au FileType css setl ts=2 sw=2 sts=2
au FileType scss setl ts=2 sw=2 sts=2
au FileType sass setl ts=2 sw=2 sts=2
au FileType less setl ts=2 sw=2 sts=2

" filetype miscs
au! BufRead,BufNewFile *.wsgi setfiletype python
au! BufRead,BufNewFile *.less setfiletype less
