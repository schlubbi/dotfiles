#!/usr/bin/env bash 

function install_neovim {
 curl -LO https://github.  curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz
 tar xzvf nvim-linux64.tar.gz
 sudo cp -r nvim-linux64/ /usr/local/
 rm -rf nvim-linux64.tar.gz nvim-linux64
}

function install_node {
  if ! loc="$(type -p "node")" || [[ -z $loc ]]; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
    source ~/.bashrc
    nvm install node
  fi
}

function install_fzf {
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install --all
}

mkdir -p ~/.config/

install_node
install_fzf
install_neovim
ln -sf /workspaces/.codespaces/.persistedshare/dotfiles/.gitconfig ~/.gitconfig
ln -sf /workspaces/.codespaces/.persistedshare/dotfiles/nvim_new ~/.config/nvim
