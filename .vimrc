" startup pathogen
call pathogen#infect()

" set leader key
let mapleader='-'

" set color scheme
colorscheme desert

" set options
set nowrap
set wildmenu
set incsearch
set noswapfile
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab 

" basic keyboard shortcuts
noremap <F5> :setlocal spell! spell?<cr>

" shortcut uppercase/lowercase word
nnoremap <c-u> viwU
nnoremap <c-l> viwu
inoremap <c-u> <esc><right>viwUi
inoremap <c-l> <esc><right>viwui

" enable omni-complete functionality
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone

" user functions 
function TrimLines()
    :%s/\v +$//ge
endfunction
