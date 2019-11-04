" Author: harry830622
" Email: harry830622@gmail.com

" Variables {{{1

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" Plugins {{{1

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-vinegar'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'ntpeters/vim-better-whitespace'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'suy/vim-context-commentstring'

Plug 'morhetz/gruvbox'

Plug 'neoclide/jsonc.vim'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'leafgarland/typescript-vim'
" Plug 'peitalin/vim-jsx-typescript'

call plug#end()

" Plugins' settings {{{1

" lightline
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }

" emmet
let g:user_emmet_settings = {
      \   "html": {
      \     "empty_element_suffix": " />",
      \   },
      \   "javascript": {
      \     "extends": "jsx",
      \   },
      \ }

" coc
command! -nargs=0 EslintFix :CocCommand eslint.executeAutofix

" easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Usability options {{{1

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

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches
set hlsearch
set incsearch

set ff=unix

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

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

" Set the command window height to 2 lines, to avoid many cases of having to
" press <Enter> to continue
set cmdheight=2

" Display line numbers on the left
set number
set relativenumber

" Wrap the code beyond 80 columns
set textwidth=80
set colorcolumn=81

" Highlight the current line
set cursorline

" Set the timeout for mapping in ms, default is 1000
set updatetime=300

set noshowmode

" Color schemes {{{1

" Support true colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

" Set colorscheme
set background=dark
colorscheme gruvbox

" Enable syntax highlighting
syntax enable

" Indentation options {{{1

" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set expandtab
set softtabstop=2
set shiftwidth=2

" Abbreviations {{{1

iabbrev atg harry830622@gmail.com
iabbrev ateda yhchang@eda.ee.ntu.edu.tw

" Mappings {{{1

" Map <leader>
let mapleader=" "

" Replace <esc> with jk
inoremap jk <esc>

" Make eol and sol more convenient
nnoremap H 0
nnoremap L $

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
nnoremap Y y$

" Edit my vimrc
nnoremap <leader>ev :edit $MYVIMRC<cr>

" Source my vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" Get off my lawn
nnoremap <left> :echoerr "Use h"<cr>
nnoremap <right> :echoerr "Use l"<cr>
nnoremap <up> :echoerr "Use k"<cr>
nnoremap <down> :echoerr "Use j"<cr>

" Force writing the read-only file
cnoremap w!! w !sudo tee > /dev/null %

" Easier to write & quit
nnoremap <leader>w :update<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>x :x<cr>

" Easier to copy to & paste from the system clipboard
vnoremap <leader>y "+y
nnoremap <leader>p "+p

" Toggle folding
nnoremap <leader>z za

" Easier to close preview
nnoremap <leader>po :popen<cr>
nnoremap <leader>pc :pclose<cr>

" Easier to close location
nnoremap <leader>lo :lopen<cr>
nnoremap <leader>lc :lclose<cr>

" Easier to manipulate buffers
nnoremap =b :b#<cr>
nnoremap <leader>bd :bd<cr>

" Select the whole file
nnoremap <leader>% ggVG

" vim-plug
nnoremap <leader>pi :PlugInstall<cr>
nnoremap <leader>pu :PlugUpdate<cr>

" vim-gitgutter
nnoremap ]h :GitGutterNextHunk<cr>
nnoremap [h :GitGutterPrevHunk<cr>

" fzf
nmap <c-p> :Files<cr>
nmap <c-o> :Buffers<cr>

" coc
inoremap <expr> <tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Autocmds {{{1

augroup filetype_javascript
  autocmd!
  autocmd FileType javascript nnoremap <buffer> <leader>f :EslintFix<cr>
augroup END

augroup filetype_typescript
  autocmd!
  autocmd FileType typescript nnoremap <buffer> <leader>f :EslintFix<cr>
augroup END

augroup filetype_java
  autocmd!
  autocmd FileType java setlocal textwidth=100
  autocmd FileType java setlocal colorcolumn=101
augroup END

augroup filetype_gitcommit
  autocmd!
  autocmd FileType gitcommit setlocal textwidth=72
  autocmd FileType gitcommit setlocal colorcolumn=73
augroup END

augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END

augroup filetype_general
  autocmd!
  autocmd FileType text,markdown,asciidoc setlocal spell
augroup END

augroup before_write
  autocmd!
  autocmd BufWritePre * StripWhitespace
augroup END
