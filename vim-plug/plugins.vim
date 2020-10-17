" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
  " File Explorer
  Plug 'scrooloose/NERDTree'
  " Undo Tree
  Plug 'mbbill/undotree'
  " Language Pack for Syntax
  Plug 'sheerun/vim-polyglot'
  " Coc
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " keep update Coc
  Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
  " air-line
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  " Themes
  Plug 'cocopon/iceberg.vim', {'do': 'cp colors/* $HOME/.config/nvim/colors/'}
  " Show Color Lively
  Plug 'norcalli/nvim-colorizer.lua'
  " Rainbow-lize parentheses
  Plug 'junegunn/rainbow_parentheses.vim'
  call plug#end()
