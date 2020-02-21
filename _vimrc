"should be conditional to mswin
"source $VIMRUNTIME/defaults.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin

"     GENERAL SETTINGS
" ===================================
set nocompatible "needs to be at the begginig
set exrc
set lines=40 columns=100
set history=1000
set nowritebackup "files edited on destop don't move (since vim does not recreate, but reuse file)
set noswapfile
set nobackup 
set noundofile 
"stevelosh
"set undofile "test option, if you are not too much annoyed
set modelines=0 "better security somehow

set encoding=utf-8
set fileencoding=utf-8

" ===================================
"     CLIPBOARD (nvim + console)
" ===================================
set clipboard=unnamedplus  "http://vim.wikia.com/wiki/Accessing_the_system_clipboard
"on linux -> you need vim with clipboard support, read the article
"http://stackoverflow.com/questions/5166652/how-to-view-utf-8-characters-in-vim-or-gvim
"https://github.com/neovim/neovim/issues/2325#issuecomment-435694526
set mouse=a "enable mouse in all modes
"workaround for nvim not supporting clipboard=autoselect, selecting with mouse
"copies selected text into X11 primary clipboard
vmap <LeftRelease> "*ygv
" ===================================
"     EDITOR
" ===================================
"colorscheme molokai
set wrapmargin=0
set textwidth=0
set hidden
"set colorcolumn=85
set so=7 "there will always be 7 lines under/over cursor when approaching end of screen
""http://jeffkreeftmeijer.com/2012/relative-line-numbers-in-vim-for-super-fast-movement/
""dynamically switches between number and relative number
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

"set foldmethod=syntax
set showcmd
set backspace=2 " backspace can behave weirdly, =2 is what one would expect
set nojoinspaces
set wildmenu
set wildmode=longest,list
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
"     KEYMAPPINGS
" =======
"STEVELOSH
"autocmd FocusLost * :wa "save files when foculost happens
" arrow keys are bleh, bleh
"no <up> 0"oy$k"py$d$"opj0d$"ppk
"no <down> 0"oy$j"py$d$"opk0d$"ppj
"no <left> <Nop>
"no <right> <Nop>

"ino <down> <Nop>
"ino <left> <Nop>
"ino <right> <Nop>
"ino <up> <Nop>

"will create line above, ubder current, without going into inser.
"very useful with . for multiple empy line creations
nmap go o<ESC>k
nmap gO O<ESC>j

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

"vimtip 464
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/
