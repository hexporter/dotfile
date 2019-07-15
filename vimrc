" show existing tab with 4 space width
set tabstop=4

" when indenting with '>', use 4 space width
set shiftwidth=4

" on pressing tab, insert 4 space width
set expandtab

" set line number
set number

" display relative line number
set relativenumber

" activate mosue
set mouse=a

autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

call plug#begin('~/.vim/plugged')
Plug 'rakr/vim-one'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } 
Plug 'Valloric/YouCompleteMe'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'vhdirk/vim-cmake'

call plug#end()

let g:airline_theme='one'
colorscheme one
set background=light

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object  (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Open NERDTree automatically when vim starts up
autocmd vimenter * NERDTree

" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" Map a specific key or shortcut to open NERDTree
map <C-n> :NERDTreeToggle<CR>

" let g:ycm_global_ycm_extra_conf = "~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py"


