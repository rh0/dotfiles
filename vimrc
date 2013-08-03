" master option for vim features
set nocompatible

" enable pathogen features
call pathogen#infect()
call pathogen#helptags()

" window focus
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" make sure we get utf-8
set encoding=utf-8
set fileencoding=utf-8

" Zenburn Colors (alien fruit salad)
colors zenburn

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" GUI options
set guioptions-=T " kill the toolbar if using in the GUI
set guioptions-=m " remove menu
set guioptions-=r " remove the right scrollbar
set guioptions-=L " remove left scrollbar when split

set guifont=DejaVu\ Sans\ Mono\ 11

" some regular options
set scrolloff=5 " begin scrolling 5 lines from the bottom
set cursorline " highlight cursor line
set number " show line numbers
set laststatus=2 " show statusline
set wrap " visually wrap lines
set linebreak " wrap only on word boundaries
set hidden " allows hiding buffers with changes
set expandtab " turn tabs into spaces
set autoindent " automatic indenting
set smartindent " smart indenting
set shiftwidth=2 " indent size on autoindent or >>
set shiftround " always round indentation to shiftwidth
set tabstop=2 " tab display size
set softtabstop=2 " tab size in insert mode (not indent)
set gdefault " substitutes on the whole line by default (no trailing /g)
set showmode " shows what mode the user is in
set showcmd " displays partial commands as you type
set history=256 " increase vim history size
set title " set the window title

set wildmenu " fix the autocomplete behavior in command mode
set wildmode=list:longest " autocomplete up to point of ambiguity

" set lower priority suffixes
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

" search options
set hlsearch " highlights search results
set incsearch " incremental search results

" turn off backup, turn on persistent undo
set nobackup
set nowb
set noswapfile

if !isdirectory($HOME . "/.vim/backups")
  call mkdir($HOME . "/.vim/backups")
endif

set undodir=~/.vim/backups
set undofile

" enable syntax for the win
syntax on " enable syntax highlighting

" load filetype indents
if has("autocmd")
  filetype plugin indent on

" archlinux: jump to last known cursor position
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \ exe "normal! g`\"" |
    \ endif

" Python stuff
  autocmd FileType python let python_highlight_all = 1
  autocmd FileType python let python_slow_sync = 1
  autocmd FileType python set expandtab shiftwidth=4 softtabstop=4
  autocmd FileType python set completeopt=preview"

endif

" use ctrl+arrow to navigate the tabs
map <C-Left> :tabprevious<CR>
map <C-Right> :tabnext<CR>

" php: enable sql and html inside php
let php_sql_query = 1
let php_htmlInStrings = 1

" syntastic: syntastic options
let g:syntastic_auto_jump=1 " jump to the erros on file save (or file load)
let g:syntastic_auto_loc_list=1 " automatically open and close error windows
let g:syntastic_phpcs_conf="--standard=Drupal"

" jamessan statusbar (cherrypicked)
set statusline+=[%{strlen(&ft)?&ft:'none'}, " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}] " encoding

" fugitive status
set statusline+=%{fugitive#statusline()} " current git repo status

" syntastic: place warnings on status line
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" siiph statusbar (cherrypicked)
set statusline+=%=%f\ " file name"
set statusline+=%=%10((%l,%c)%)\ " line and column
set statusline+=%=%P " percentage of file

" NERDTree Options
map <f3> :NERDTreeToggle<cr>
let NERDChristmasTree = 1
let NERDTreeShowHidden = 1
let NERDTreeHijackNetrw = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeChiDirMode = 2
let NERDTreeDirArrows=1
let NERDTreeAutoDeleteBuffer = 1
