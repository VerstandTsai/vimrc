" vim-plug
call plug#begin()
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'vim-airline/vim-airline'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'lukas-reineke/indent-blankline.nvim'
call plug#end()

syntax on

" vim-airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'catppuccin'

" Line numbers
set number

" No line wrap
set nowrap

" 4-space tab
set tabstop=4
set shiftwidth=4

" Convert tab to spaces
set expandtab

" Closed brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O

" Press enter to apply completion
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Restore cursor shape after leaving Neovim
au VimLeave * set guicursor= | call chansend(v:stderr, "\x1b[ q")

" F5 to compile & run
autocmd FileType c,asm nnoremap <F5> :!clear && gcc -o %:r % && %:r<CR>
autocmd FileType cpp nnoremap <F5> :!clear && g++ -o %:r % && %:r<CR>
autocmd FileType python nnoremap <F5> :!clear && python3 %<CR>
autocmd FileType tex nnoremap <F5> :silent !xelatex %<CR>

" Mappings and unmappings for non-programming languages
autocmd FileType html iunmap '
autocmd FileType tex iunmap '
autocmd FileType tex iunmap {<CR>
autocmd FileType tex inoremap " ``"<left>

" 2-space tab for frontend development
autocmd FileType html,css,javascript set tabstop=2
autocmd FileType html,css,javascript set shiftwidth=2

luafile ~/.config/nvim/config.lua

