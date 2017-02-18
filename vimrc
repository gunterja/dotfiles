execute pathogen#infect()
filetype off
syntax on
filetype plugin indent on

" Turn the goddamn bell off
set belloff=all

" Set the background to dark
set background=dark

" Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" NERDTree configuration
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1  " Show hidden files

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" automatically reload unmodified buffers when edited externally
set autoread

" improve screen refresh for terminal vim
set ttyfast

" Open new split panes to right and bottom, which feels more natural than Vim’s default:
set splitbelow
set splitright

" Treat all lines equally, even if wrapped
nmap k gk
nmap j gj

" screen not redrawn during command execution<
set lazyredraw

" Ignore case when searching
set ignorecase

" Highlight search results
set hlsearch

" Make search act like search in modern browsers
set incsearch

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 80 characters
set lbr
set tw=80

" Auto indent, Smart indent, and Wrap lines
set ai
set si
set wrap

" Use line numbers in the gutter
set number

" Allow nvim/vim to copy to the macOS clipboard using the mouse/trackpad
set mouse=
set cb=unnamed

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Set 7 lines to the cursor when moving vertically using arrows or j/k
set so=7

" Map 'jk' and 'kj' to <esc> while in insert mode
imap jk <esc>
imap kj <esc>

" Map Ctrl-S to function like Command-S in a GUI editor(i.e. Save)
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>

" Custom mappings to open and source .vimrc
nmap <Leader>vr :vsp $MYVIMRC<CR>
nmap <Leader>so :source $MYVIMRC<CR>

" Fuzzy Finder plugins and using pt for searching
let g:ctrlp_map = ',f' "type comma and then f to activate ctrlP
" use a custom command to do searching instead of CtrlP's built in search
" which is slow.
let g:ctrlp_user_command = 'pt %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .DS_Store
      \ --ignore .bundle
      \ -g ""'
" Use a faster matching function
"let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
" With the user command, there's no need to have caching because it's fast enough
let g:ctrlp_use_caching = 0

" Set shortcut for Ack
map <Leader>F :Ack 

" Trying to set Ack to use pt for search
let g:ackprg = 'pt --nocolor --nogroup'

" Custom command that allows one to create a new file in a folder with a one-liner
"command -nargs=1 E execute('silent! !mkdir -p "$(dirname "<args>")"') <Bar> e <args>

" Custom command allowing me to delete the current file and its buffer
" map <Leader>D :call delete(@%)|bdelete!

"---------GitGutter Settings----------
" Start GitGutter automatically
let g:gitugtter_sign_column_always = 1

" Make GitGutter symbols show up faster than default
set updatetime=250




