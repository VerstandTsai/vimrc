" vim-plug
call plug#begin()
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'vim-airline/vim-airline'
Plug 'joshdick/onedark.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
call plug#end()

" vim-airline
let g:airline_powerline_fonts = 1

" One Dark theme
syntax on
set termguicolors
colorscheme onedark

" Row numbers
set number

" Tab
set tabstop=4
set shiftwidth=4
set expandtab

" Closed brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Press enter to apply completion
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" F5 to compile & run
autocmd FileType c,asm nnoremap <F5> :!clear && gcc -o %:r % && ./%:r<CR>
autocmd FileType cpp nnoremap <F5> :!clear && g++ -o %:r % && ./%:r<CR>
autocmd FileType python nnoremap <F5> :!clear && python3 %<CR>

" Use a tab of 2 spaces when doing frontend dev
autocmd FileType html,css,javascript set tabstop=2
autocmd FileType html,css,javascript set shiftwidth=2

luafile ~/.config/nvim/config.lua

