" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
call plug#end()

" NERDTree
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" vim-airline
let g:airline_powerline_fonts = 1

" One Dark theme
syntax on
set termguicolors
colorscheme onehalfdark

" Row numbers
set number

" Tab
set tabstop=4
set shiftwidth=4
set expandtab

" Closed Brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" F5 to compile & run
autocmd FileType c nnoremap <F5> :!clear && gcc -o %:r % && ./%:r<CR>
autocmd FileType cpp nnoremap <F5> :!clear && g++ -o %:r % && ./%:r<CR>
autocmd FileType python nnoremap <F5> :!clear && python3 %<CR>

" HTML config
autocmd FileType html inoremap > <ESC>yiwA></<ESC>pA><ESC>F<i
autocmd FileType html inoremap ><CR> <ESC>yiwA><CR></<ESC>pA><Up><CR>
autocmd FileType html set tabstop=2
autocmd FileType html set shiftwidth=2
autocmd FileType css set tabstop=2
autocmd FileType css set shiftwidth=2
autocmd FileType javascript set tabstop=2
autocmd FileType javascript set shiftwidth=2
