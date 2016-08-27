set number

" KEY MAPPINGS
let mapleader = "\<Space>"
noremap <leader>ev :vsplit $MYVIMRC<cr>
inoremap jj <Esc>

if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

call plug#end()

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
