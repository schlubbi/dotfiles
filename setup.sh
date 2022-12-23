#!/usr/bin/env bash 

function install_neovim {
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.deb
  sudo dpkg -i nvim-linux64.deb
}
install_neovim

mkdir ~/.config/
ln -sf /workspaces/.codespaces/.persistedshare/dotfiles/nvim ~/.config/nvim
ln -sf /workspaces/.codespaces/.persistedshare/dotfiles/.gitconfig ~/.gitconfig
