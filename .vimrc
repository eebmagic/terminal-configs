set tabstop=4 shiftwidth=4 expandtab
syntax on
set clipboard=unnamed
set hlsearch incsearch
set number relativenumber
set ruler
set splitright
set splitbelow
set showcmd

set clipboard=unnamed

" Use ; for command key so you don't have to hold shift
nnoremap ; : 

" Change backspace to allow deleting newline chars
set backspace=indent,eol,start

" Use tab key for indenting visual blocks (like in other editors)
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv


" Add command to view diff from saved file
command W w !diff % -

" duplicate highlighted selection under itself
vmap <C-p> y'>p

" Swap word under cursor with next word
nnoremap gw "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><C-o><C-l>

" Add parens around remainder of line
nnoremap cp d$i ()<ESC>hp


" Swap cursor for insert/other modes
let &t_SI.="\033[0 q" " start insert mode
let &t_EI.="\033[1 q" " end insert mode

" optional reset cursor on start and leave
augroup myCmds
au!
" flips through insert modes to triger cursor swap defined above
autocmd VimEnter * :normal :startinsert :stopinsert
autocmd VimLeave * silent !echo -ne "\033[0 q"
augroup END

" Remaps to make numpad work in mac terminal
:inoremap <Esc>Oq 1
:inoremap <Esc>Or 2
:inoremap <Esc>Os 3
:inoremap <Esc>Ot 4
:inoremap <Esc>Ou 5
:inoremap <Esc>Ov 6
:inoremap <Esc>Ow 7
:inoremap <Esc>Ox 8
:inoremap <Esc>Oy 9
:inoremap <Esc>Op 0
:inoremap <Esc>On .
:inoremap <Esc>OQ /
:inoremap <Esc>OR *
:inoremap <Esc>Ol +
:inoremap <Esc>OS -
:inoremap <Esc>OM <Enter>
