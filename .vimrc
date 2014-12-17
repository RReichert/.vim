" startup pathogen - used for bundle
call pathogen#infect()

" set editor options
set wildmenu
set incsearch

" set leader key
let mapleader='-'

" add omni complete functionality
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone

" shortcut to uppercase/lowercase words
nnoremap <c-u> viwU
nnoremap <c-l> viwu
inoremap <c-u> <esc><right>viwUi
inoremap <c-l> <esc><right>viwui

" function: removes all the trailing empty spaces after last non-space character
function RemoveWhiteSpaces()
  %s/ \+$//ge
endfunction

" add pre-save cleanup functionality
autocmd BufWritePre *.c,*.cpp,Makefile :call RemoveWhiteSpaces()
