" Line numbers
:set relativenumber
:set number

" Leader
let mapleader = "\<Space>"

" -------------------Hotkeys-----------------------------
" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :tabnew<CR>:e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
" Search hotkeys
nmap <leader>gf :vimgrep /<c-r>=expand("<cword>")<cr>/../*/*<CR> /<c-r>=expand("<cword>")<cr><CR><s-n>
nmap <leader>n :cnext<CR>
map <leader>f :NERDTreeToggle<CR>
map <leader>l :set list!<CR> " Toggle tabs and EOL
" -------------------------------------------------------

" Clipboard
:set clipboard+=unnamedplus

" Appearance
:colorscheme evening
:set background=dark
" Display options
:set showmode
:set showcmd
" Set status line display
:set statusline=%F%m%r%h%w\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" Indentation
:set autoindent
:set shiftwidth=4
:set smarttab
:set tabstop=4
:set shiftround
:set copyindent

" Editor
" Hidden characters
:set mouse=a
:set pastetoggle=<F2>
:set listchars=tab:▸▸,trail:~,extends:>,precedes:<,space:·
:set wrap
:syntax enable
:syntax on
:set noerrorbells
:set visualbell
:set title
:set cursorline
:set ruler
:set wildmenu
:set laststatus=2
:set hidden
:set formatoptions-=cro
" Highlight matching pairs of brackets. Use the '%' character to jump between them.
:set showmatch
:set matchpairs+=<:>
" Text rendering
:set linebreak
:set scrolloff=5
:set sidescrolloff=5


" Misc
:set autoread
:set confirm
:set dir=~/.cache/vim
:set backupdir=~./cache/vim
:set history=1000
:set wildignore+=.pyc,.swp
:set backspace=indent,eol,start

" Search
:set smartcase
:set incsearch
:set showmatch
:set hlsearch
"

" Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap

au BufRead,BufNewFile *.cfx,*.cfi set filetype=fx
au BufRead,BufNewFile *.cfx,*.cfi set syntax=fx

" Plugins
call plug#begin(stdpath('data'))
" Code aligning
Plug 'junegunn/vim-easy-align'
" File tree
Plug 'preservim/nerdtree'
call plug#end()
