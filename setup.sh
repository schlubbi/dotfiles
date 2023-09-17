#!/usr/bin/env bash 

function install_neovim {
  curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz
  tar xzvf nvim-linux64.tar.gz
  sudo cp -r nvim-linux64/ /usr/local/
  rm -rf nvim-linux64.tar.gz nvim-linux64
}
install_neovim

mkdir ~/.config/
ln -sf /workspaces/.codespaces/.persistedshare/dotfiles/nvim ~/.config/nvim
ln -sf /workspaces/.codespaces/.persistedshare/dotfiles/.gitconfig ~/.gitconfig
