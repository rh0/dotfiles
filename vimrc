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

" Block move
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" make sure we get utf-8
set encoding=utf-8
set fileencoding=utf-8

set termguicolors
set t_Co=256

" Zenburn Colors (alien fruit salad)
colors zenburn

" Indicator at col 81
set colorcolumn=81

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" GUI options
set guioptions-=T " kill the toolbar if using in the GUI
set guioptions-=m " remove menu
set guioptions-=r " remove the right scrollbar
set guioptions-=L " remove left scrollbar when split
set guifont=DejaVu\ Sans\ Mono\ 12

" some regular options
set cursorline " highlight cursor line
set relativenumber " relative line numbers
set scrolloff=5 " begin scrolling 5 lines from the bottom
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
set updatetime=100 " reducing update time for gitgutter

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
filetype plugin on
syntax on " enable syntax highlighting
au BufNewFile,BufRead *.theme set filetype=php
au BufNewFile,BufRead *.module set filetype=php
au BufNewFile,BufRead *.inc set filetype=php
au BufNewFile,BufRead *.install set filetype=php
au BufNewFile,BufRead *.twig set filetype=html

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
"
" jamessan statusbar (cherrypicked)
set statusline+=[%{strlen(&ft)?&ft:'none'}, " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}] " encoding

" fugitive status
set statusline+=%{fugitive#statusline()} " current git repo status

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
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1

" Taglist Options
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Inc_Winwidth = 0
let Tlist_WinWidth = 40
let Tlist_Show_One_file = 1
let Tlist_Sort_Type = "order"
let Tlist_Use_Right_Window = 1
let TList_Auto_Highight_Tag = 0
let Tlist_Highlight_Tag_On_BufEnter = 1
let Tlist_Show_One_File = 1
let Tlist_Close_On_Select = 1
let Tlist_Exit_OnlyWindow = 1
map <f4> : TlistToggle <CR>

" Airline
let g:powerline_pycmd = "py3"
let g:airline_powerline_fonts = 1
let g:airline_left_sep=''
let g:airline_right_sep=''

" Spelling
:map <F5> :setlocal spell! spelllang=en_us<CR>
" Ledger Config
let g:ledger_maxwidth = 80
let g:ledger_fillstring = '   -'

" Vue
let g:vue_pre_processors = 'detect_on_enter'

" VimWiki
let mapleader = ","
let g:vimwiki_list = [
        \{'path': '~/archive/wiki/test.wiki'},
        \{'path': '~/archive/wiki/electro.wiki', 'automatic_nested_syntaxes': 1},
\]

" CoC settings
"let g:coc_global_extensions = ['co-json', 'coc-css', 'coc-html', 'coc-json', 'coc-yaml', 'coc-phpls', 'coc-python', 'coc-spell-checker', 'coc-sql', 'coc-tsserver', 'coc-vetur']

" Trailing Whitespace
highlight ExtraWhitespace ctermbg=black guibg=black
match ExtraWhitespace /\s\+$/
