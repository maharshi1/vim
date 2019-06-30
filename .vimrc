call plug#begin('~/.vim/plugged')

Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'https://github.com/junegunn/fzf.vim'
Plug 'https://github.com/NLKNguyen/papercolor-theme'
Plug 'https://github.com/mileszs/ack.vim'
Plug 'https://github.com/lifepillar/vim-solarized8'
Plug 'https://github.com/flazz/vim-colorschemes'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/moll/vim-node'
Plug 'https://github.com/junegunn/seoul256.vim'

call plug#end()

set clipboard=unnamedplus
set number

source  ~/cscope_maps.vim
set ts=4 shiftwidth=4 expandtab
set softtabstop=4

" Backspace should delete 4 characters

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" For python
filetype indent plugin on
" indent fold for python
set foldmethod=indent

" Set paste on
" set paste

autocmd BufEnter * let &titlestring = ' ' . expand("%:t")
set title

" leader key = space
let mapleader=" "

" open ctrlp files in new tab
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>


" theme -----------------------------
" set background=light
" colorscheme basic-light
"
let g:seoul256_background = 256
colorscheme seoul256-light
" ---------------------------------

" highlight estraspace whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" highlight color
hi Search cterm=NONE ctermfg=White ctermbg=DarkMagenta

" search
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
set switchbuf=newtab

" ctrlp highlight
hi CursorLine cterm=NONE ctermbg=black ctermfg=white guibg=darkred guifg=white
