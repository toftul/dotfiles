" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc

"   Ivan Toftul .vimrc file

" map leader key
map <Space> <Leader>


" --- Spelling ---
setlocal spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
"set nospell
" underline instead of highlight
hi clear SpellBad
hi SpellBad cterm=underline

" -------------------------------
" --------- PLUGINS -------------
" -------------------------------

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(stdpath('data') . '/plugged')

" Make sure you use single quotes

Plug 'junegunn/goyo.vim'         " zen mode
Plug 'chrisbra/colorizer'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'

" Initialize plugin system
call plug#end()



" -------------------------------
" ----- PLUGINS SETUP -----------
" -------------------------------

filetype plugin on

" color scheme
colorscheme gruvbox

" git gutter
" let g:gitgutter_highlight_lines = 1
let g:gitgutter_highlight_linenrs = 1



" -------------------------------
" -------- UI settings ----------
" -------------------------------


set laststatus=2            " Always show status line
set number relativenumber   " turn hybrid line numbers on
set numberwidth=5          " width of numbers line (default on gvim is 4)
set report=0                " Show all changes.
set showmode                " Show the current mode.
set showcmd                 " show partial command on last line of screen.
set splitbelow splitright   " how to split new windows.
set title                   " Show the filename in the window title bar.

set scrolloff=8             " Start scrolling n lines before horizontal
                            "   border of window.
set sidescrolloff=7         " Start scrolling n chars before end of screen.
set sidescroll=5            " The minimal number of columns to scroll
                            "   horizontally.

" to work with long lines of text
set wrap 
set linebreak
set textwidth=0
set showbreak=...

" moving along long text
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')


" --- diff ---
set diffopt=filler          " Add vertical spaces to keep right
                            "   and left aligned.
set diffopt+=iwhite         " Ignore whitespace changes.


" --- list chars ---
" list spaces and tabs to avoid trailing spaces and mixed indentation
" see key mapping at the end of file to toggle `list`
set listchars=tab:▹\ ,trail:·,nbsp:⚋
set fillchars=fold:-
set list

" Mouse events
set mouse=a

" --- remove sounds effects ---
set noerrorbells
set visualbell

" Disable swp files
set noswapfile

" search improvements
set hlsearch    " highlight search results
set incsearch   " focuses on the found text


" -------------------------------
" -------- Indentation ----------
" -------------------------------

set expandtab                   " Expand tabs to spaces
set autoindent smartindent      " auto/smart indent
set copyindent                  " copy previous indentation on auto indent
set softtabstop=4               " Tab key results in # spaces
set tabstop=4                   " Tab is # spaces
set shiftwidth=4                " The # of spaces for indenting.
set smarttab                    " At start of line, <Tab> inserts shift width
                                "   spaces, <Bs> deletes shift width spaces.

set nomodeline                  " don't use modeline (security)

" zen mode
map <leader>f :Goyo <CR>
" autocmd! User GoyoEnter Limelight
" autocmd! User GoyoLeave Limelight!
" let g:limelight_conceal_ctermfg = 240

" set 16 colors only (to match colors from .Xresources)
"set t_Co=16

" copy to the clipboard
noremap <Leader>y "+y
noremap <Leader>p "+p
" for neovim only
"set clipboard+=unnamedplus


" clear highlight
nnoremap <Leader>h :noh<CR>
