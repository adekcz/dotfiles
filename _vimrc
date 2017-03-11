source $VIMRUNTIME/defaults.vim
source $VIMRUNTIME/mswin.vim
behave mswin
if has('gui_running')
  set guifont=Lucida_Console:h11
endif

"     GENERAL SETTINGS
" ===================================
set nocompatible "needs to be at the begginign
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

 set clipboard=unnamed  "http://vim.wikia.com/wiki/Accessing_the_system_clipboard

"http://stackoverflow.com/questions/5166652/how-to-view-utf-8-characters-in-vim-or-gvim
set encoding=utf-8
set fileencoding=utf-8
" ===================================
"     EDITOR
" ===================================
colorscheme molokai
set wrapmargin=0
set textwidth=0
set hidden
"set colorcolumn=85
set so=7 "there will always be 7 lines under/over cursor when approaching end of screen
""http://jeffkreeftmeijer.com/2012/relative-line-numbers-in-vim-for-super-fast-movement/
""dynamically switches between number and relative number
"autocmd FocusLost * :set number
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
set relativenumber
"autocmd CursorMoved * :set relativenumber
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
"     PLUGINS
" ===================================
"plugin for plugins
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

"jshint2
"let jshint2_read = 1
"let jshint2_save = 1

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_balloons = 1
let g:syntastic_python_pylint_args = "--load-plugins pylint_django"
"easymotion - default is <leader><leader>
"let g:EasyMotion_leader_key = '<Leader>'

"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'

"" powerline
""set rtp+=C:\\programs\\Vim\\vimfiles\\bundle\\powerline\\powerline\\bindings\\vim
""set cmdheight=5
""set rtp+=$VIM\\vimfiles\\bundle\\powerline\\powerline\\bindings\\vim
"let g:Powerline_symbols = 'fancy'
"vim-airline
set laststatus=2 " Always display the statusline in all windows
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
autocmd VimEnter * AirlineToggleWhitespace

"easymotion
map <Leader> <Plug>(easymotion-prefix)
"let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
"nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
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

"obsolete
"set ruler  " no need with powerline


