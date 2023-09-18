#!/usr/bin/env bash 

function install_neovim {
	curl -sSL https://github.com/neovim/neovim/releases/download/v0.9.1/nvim-linux64.tar.gz | tar xvzp --strip-components=1 -C "$HOME/.local/"
	ln -sf "$HOME/.local/bin/nvim" "$HOME/bin/"
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

if [[ -n "$CODESPACES" ]]; then
	 sudo chsh -s /bin/zsh $(whoami)
  install_fzf
  install_neovim
  ln -sf /workspaces/.codespaces/.persistedshare/dotfiles/.gitconfig ~/.gitconfig
  ln -sf /workspaces/.codespaces/.persistedshare/dotfiles/nvim_new ~/.config/nvim
fi
