set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'mileszs/ack.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'dyng/ctrlsf.vim'
Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-bundler'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-dispatch'
Plugin 'elixir-editors/vim-elixir'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"  Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"  Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"  Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
syntax on
filetype plugin indent on
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Turn deoplete on by default
call deoplete#enable()

" Enable Syntax Highlighting through vim-javascript plugin
let g:javascript_plugin_jsdoc = 1

" vim_jsx_pretty setup
"let g:vim_jsx_pretty_enable_jsx_highlight = 0 " default 1

" Colorful style vim-js-only
let g:vim_jsx_pretty_colorful_config = 1 " default 0

" VIM-JSX highlighting
let g:jsx_ext_required = 0

" Turn the numbers off in terminal mode
au TermOpen * setlocal nonumber norelativenumber

" Set proper formatting and spellcheck for commit messages
autocmd Filetype gitcommit setlocal spell textwidth=72

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

" Automatically rebalance windows on vim resize
autocmd VimResized * :wincmd = 

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
set mouse=a
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

" Rebind keys for neovim's terminal mode
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <A-[> <Esc>
  tnoremap <a-h> <c-\><c-n><c-w>h
  tnoremap <a-j> <c-\><c-n><c-w>j
  tnoremap <a-k> <c-\><c-n><c-w>k
  tnoremap <a-l> <c-\><c-n><c-w>l
  nnoremap <a-h> <c-w>h
  nnoremap <a-j> <c-w>j
  nnoremap <a-k> <c-w>k
  nnoremap <a-l> <c-w>l
endif

" Fuzzy Finder plugins and using pt for searching
let g:ctrlp_map = ',f' "type comma and then f to activate ctrlP
let g:ctrlp_cmd = 'CtrlPMRU' "start CtrlP in MRU mode
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

" Make lightline display the git branch and other basic settings
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}'
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightlineFugitive'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

function! LightlineFugitive()
  if exists("*fugitive#head")
    let mark = ' '
    let branch = fugitive#head()
    return branch !=# '' ? ' '.branch : ''
  endif
  return ''
endfunction


