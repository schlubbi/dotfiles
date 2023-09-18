#!/usr/bin/env bash 

function install_neovim {
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.deb
  sudo dpkg -i nvim-linux64.deb
  gem install neovim
}

function install_node {
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
	source ~/.bashrc
	nvm install node
}

mkdir ~/.config/

install_node
ln -sf /workspaces/.codespaces/.persistedshare/dotfiles/.gitconfig ~/.gitconfig
