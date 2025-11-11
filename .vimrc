syntax on
set noerrorbells
set autoindent
syntax enable
set wrap
set title
set incsearch
set number
set confirm
set tags=tags
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <leader><C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
set clipboard=unnamedplus

"Set the visual mode highlight color to reverse
hi Visual cterm=reverse ctermbg=None

"Change the vim caret to block
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

"Set the search phrase highlight
set hlsearch
hi Search cterm=None ctermfg=black ctermbg=blue

"Clear the search highlighted word with ctrl+l
nmap <silent> <C-L> <C-L>:nohlsearch<CR>:match<CR>:diffupdate<CR>

"Wrap lines at 79 characters
"set tw=80

"set color coloumn
"set colorcolumn

" To highlight trailing whitespaces:
:highlight ExtraWhitespace ctermbg=red guibg=red

filetype plugin indent on