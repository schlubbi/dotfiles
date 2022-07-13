function install_neovim {
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
  chmod u+x nvim.appimage
  ./nvim.appimage --appimage-extract
  ./squashfh-root/AppRun --version
  sudo mv squashfs-root /
  sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
}
install_neovim

mkdir ~/.config/
ln -s /workspaces/.codespaces/.persistedshare/dotfiles/nvim ~/.config/nvim
ln -sf /workspaces/.codespaces/.persistedshare/dotfiles/.gitconfig ~/.gitconfig
