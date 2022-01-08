" indendention like autoTab is on
filetype plugin indent on

" Languages color syntex is on
syntax on

" setting line number with relative
set nu
set relativenumber

" script to add autoclosing brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
