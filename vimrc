" URL: https://raw.githubusercontent.com/harry830622/dotfiles/master/vimrc
"
" Author: harry830622
" Email: harry830622@gmail.com
"
"------------------------------------------------------------
" Plugins (Vundle must be on top of the vimrc) {{{1
" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'
"Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'jiangmiao/auto-pairs'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'othree/html5.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'mattn/emmet-vim'
Plugin 'edkolev/tmuxline.vim'
" Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
"Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-commentary'
" Plugin 'easymotion/vim-easymotion'
Plugin 'christoomey/vim-tmux-navigator'
" Plugin 'tpope/vim-rails'
" Plugin 'tpope/vim-bundler'
" Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"------------------------------------------------------------
" Plugins' settings {{{1

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#ycm#enabled = 1
" let $PYTHONPATH="/usr/lib/python3.5/site-packages"

" UltiSnips
let g:UltiSnipsExpandTrigger="<C-z>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"

" YouCompleteMe
" let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_global_ycm_extra_conf = "~/dotfiles/ycm_extra_conf.py"
let g:ycm_error_symbol = "✗"
let g:ycm_warning_symbol = "△"

" Syntastic
" let g:syntastic_javascript_checkers = ['eslint']

"------------------------------------------------------------
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.

" Enable syntax highlighting
syntax on

" Support 256 colors environment
set t_Co=256

" Set colorscheme
set background=dark
colorscheme gruvbox
" colorscheme solarized

"------------------------------------------------------------
" Must have options {{{1
"
" These are highly recommended options.

" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden

" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch
set incsearch

" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline

set ff=unix

"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" press <Enter> to continue
set cmdheight=2

" Display line numbers on the left
set number
set relativenumber

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

" Wrap the code beyond 80 columns
set textwidth=80
set colorcolumn=81

" Highlight the current line
set cursorline

" Tell vim where to find the tags files
set tags=./tags

" Change cursor shape in different mode
if has("autocmd")
  au InsertEnter *
        \ if v:insertmode == 'i' |
        \   silent execute "!~/.gnome-terminal-cursor-shape.sh ibeam" |
        \ elseif v:insertmode == 'r' |
        \   silent execute "!~/.gnome-terminal-cursor-shape.sh underline" |
        \ endif
  au InsertLeave * silent execute "!~/.gnome-terminal-cursor-shape.sh block"
  au VimLeave * silent execute "!~/.gnome-terminal-cursor-shape.sh block"
endif

"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings according to personal preference.

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=2
set softtabstop=2
set expandtab

" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
"set shiftwidth=4
"set tabstop=4


"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings

" Replace <Esc> with jk
inoremap jk <Esc>

" Make eol and sol more convenient
nnoremap H 0
nnoremap L $

" Map <leader>
let mapleader=" "

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Edit my vimrc
nnoremap <Leader>ev :e $MYVIMRC<CR>

" Source my vimrc
nnoremap <Leader>sv :so $MYVIMRC<CR>

" Map <C-l> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <Leader>hl :nohl<CR><C-l>

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Force writing the read-only file
cmap w!! w !sudo tee > /dev/null %

" Format codes by clang-format
nnoremap <C-i> :pyf /usr/share/clang/clang-format.py<CR>

"------------------------------------------------------------
" Autocmds {{{1

augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
  autocmd FileType gitcommit setlocal textwidth=72
  autocmd FileType gitcommit setlocal colorcolumn=73
augroup END

augroup before_write
  autocmd!
  autocmd BufWritePre * StripWhitespace
augroup END

"------------------------------------------------------------
