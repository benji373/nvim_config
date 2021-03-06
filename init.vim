"------------------------------- Vim-Plug -------------------------------
set rtp+=~/.nvim/autoload/plug.vim
call plug#begin()
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'bling/vim-airline'
Plug 'easymotion/vim-easymotion'
Plug 'flazz/vim-colorschemes'
Plug 'dagwieers/asciidoc-vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'kien/ctrlp.vim'
Plug 'chiel92/vim-autoformat'
call plug#end()
" ------------------------------- General -------------------------------
set nocompatible
filetype off

inoremap jk <esc>

set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set hidden
set undofile
set smartcase
set nobackup
set nowritebackup
let mapleader=","

syntax on
set nu
colorscheme Tomorrow-Night

set wildmenu
set wildmode=longest:full,full

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

let g:syntastic_asciidoc_asciidoc_exec = 'asciidoctor'
let g:airline#extensions#tabline#enabled = 1

let g:python_host_prog = '/path/to/python2.7'

let b:formatdef_custom_c='"astyle --mode=c --suffix=none --options=/home/benjamin/Documents/Recruit-Resources/Development-Guide/Style-Guide/astylerc"'
let b:formatters_c = ['custom_c']

augroup autocom
    autocmd!
    au BufWrite * :Autoformat
augroup END
"----regex----"
"nnoremap / /\c
"vnoremap / /\c


" ------------------------------- Navigation -------------------------------
nnoremap <C-n> :NERDTreeToggle<CR>

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>
nnoremap tn :tabnew<CR>

let g:EasyMotion_smartcase = 1

map <Leader>s <Plug>(easymotion-s)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>w <Plug>(easymotion-w)
map <Leader>b <Plug>(easymotion-b)
map <Leader>e <Plug>(easymotion-e)
map <Leader>/ <Plug>(easymotion-jumptoanywhere)

" ------------------------------- Buffer Resize -------------------------------
map <C-h> <C-W><
map <C-l> <C-W>>
map <C-j> <C-W>-
map <C-k> <C-W>+

" ------------------------------- Rainbow Parentheses -------------------------------
let g:rbpt_colorpairs = [
            \ ['brown',       'RoyalBlue3'],
            \ ['Darkblue',    'SeaGreen3'],
            \ ['darkgreen',   'firebrick3'],
            \ ['darkcyan',    'RoyalBlue3'],
            \ ['darkred',     'SeaGreen3'],
            \ ['gray',        'RoyalBlue3'],
            \ ['black',       'SeaGreen3'],
            \ ['darkgreen',   'RoyalBlue3'],
            \ ['darkcyan',    'SeaGreen3'],
            \ ]
let g:rbpt_max = 13
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
