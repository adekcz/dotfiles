
"     GENERAL SETTINGS
" ===================================
set nocompatible "needs to be at the begginign
set exrc
set lines=40 columns=100
set history=1000
set nowritebackup "files edited on destop don't move (since vim does not recreate, but reuse file)
set noswapfile
set nobackup
"stevelosh
set undofile "test option, if you are not too much annoyed
set modelines=0 "better security somehow

" ===================================
"     EDITOR
" ===================================
colorscheme Simpleandfriendly
set textwidth=79
"set colorcolumn=85
set so=7 "there will always be 7 lines under/over cursor when approaching end of screen
""http://jeffkreeftmeijer.com/2012/relative-line-numbers-in-vim-for-super-fast-movement/
""dynamically switches between number and relative number
autocmd FocusLost * :set number
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
set relativenumber
"autocmd CursorMoved * :set relativenumber
set foldmethod=syntax
set showcmd
set backspace=2 " backspace can behave weirdly, =2 is what one would expect
set nojoinspaces
set wildmenu
"STEVELOSH http://stevelosh.com/blog/2010/09/coming-home-to-vim/#why-i-switched-to-textmate
set ttyfast "fast terminal-> bigger packets of chars are processed at once
set visualbell "screen flick instead of beep
set list
set listchars=tab:»\ ,eol:¬
nmap <leader>l :set list!<CR> "toggles invis chars

"     INDENTATION 
" =========================
set smartindent
"set shiftwidth=4
"set expandtab
set smarttab
"STEVELOSH 
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab


"     SEARCH 
" =========================
set hlsearch
set showmatch
" from: http://www.youtube.com/watch?v=p6K4iIMlouI
set smartcase " lowercase search pattern will look on all case combinations.
set incsearch
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
"STEVELOSH
"search is verymagic, see help magic
nnoremap / /\v
vnoremap / /\v
set gdefault "no need to append g after every substitution
set ignorecase

" ===================================
"     PLUGINS
" ===================================
"plugin for plugins
call pathogen#infect()
filetype plugin indent on

"easymotion - default is <leader><leader>
let g:EasyMotion_leader_key = '<Leader>'

" powerline
"set rtp+=C:\\programs\\Vim\\vimfiles\\bundle\\powerline\\powerline\\bindings\\vim
"set cmdheight=5
"set rtp+=$VIM\\vimfiles\\bundle\\powerline\\powerline\\bindings\\vim
let g:Powerline_symbols = 'fancy'
set laststatus=2 " Always display the statusline in all windows
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

" ===================================
"     KEYMAPPINGS
" =======
"STEVELOSH
autocmd FocusLost * :wa "save files when foculost happens
" arrow keys are bleh, bleh
no <up> 0"oy$k"py$d$"opj0d$"ppk
no <down> 0"oy$j"py$d$"opk0d$"ppj
no <left> <Nop>
no <right> <Nop>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

"will create line above, ubder current, without going into inser.
"very useful with . for multiple empy line creations
nmap go o<ESC>k
nmap gO O<ESC>j

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

"vimtip 464
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin


"obsolete
"set ruler  " no need with powerline
