#!/usr/bin/env bash 

function install_neovim {
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.deb
  sudo dpkg -i nvim-linux64.deb
}


function install_lazy_vim {
  git clone https://github.com/LazyVim/starter ~/.config/nvim
  rm -rf ~/.config/nvim/.git
}

mkdir ~/.config/
install_lazy_vim

ln -sf /workspaces/.codespaces/.persistedshare/dotfiles/.gitconfig ~/.gitconfig
