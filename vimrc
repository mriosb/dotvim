set number
set hidden
set nowrap
set tabstop=2
set autoindent
set copyindent
set shiftwidth=2
set showmatch
set smarttab
set hlsearch
set incsearch
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:spotify_country_code = 'CR'

" KEY MAPPINGS
let mapleader = "\<Space>"
noremap <leader>ev :vsplit $MYVIMRC<cr>
map <leader>ss :NERDTreeToggle<CR>
map <leader>spt :Spotify 


noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

inoremap jj <Esc>
nnoremap ; :

if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'pangloss/vim-javascript'
Plug 'fatih/vim-go'
Plug 'moll/vim-node'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
Plug 'mxw/vim-jsx'
Plug 'takac/vim-spotifysearch'

call plug#end()

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


filetype on
syntax on
set background=dark
let g:airline_theme = "hybrid"
colorscheme hybrid_reverse
set guifont=Menlo\ Regular:h18
