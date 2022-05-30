" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
  Plug 'tpope/vim-rbenv'
  " Auto pairs for '(' '[' '{'
  Plug 'jiangmiao/auto-pairs'
  " Stable version of coc
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Airline & themes
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " fzf
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'vim-ruby/vim-ruby'
  Plug 'tpope/vim-endwise'
  Plug 'mhinz/vim-signify'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'mileszs/ack.vim'
  if executable("rg")
    let g:ackprg = 'rg --vimgrep --no-heading'
  endif
  Plug 'junegunn/rainbow_parentheses.vim'
  Plug 'ludovicchabant/vim-gutentags'
  Plug 'rust-lang/rust.vim'
  Plug 'majutsushi/tagbar'
  Plug 'liuchengxu/vim-which-key'
  Plug 'justinmk/vim-sneak'
  Plug 'dense-analysis/ale'
  Plug 'cocopon/iceberg.vim'
  Plug 'sonph/onehalf', {'rtp': 'vim/'}
  Plug 'fatih/vim-go'
  Plug 'arcticicestudio/nord-vim'
  Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
  Plug 'vim-scripts/xoria256.vim'
call plug#end()
