#!/bin/bash

rm -rf ~/.vimrc ~/.zshrc ~/.bashrc

curl --proto '=https' -fLsS https://rossmacarthur.github.io/install/crate.sh | bash -s -- --repo rossmacarthur/sheldon --to ~/.local/bin

ln -vfs ~/repos/dotfiles/nvim/.vimrc ~/.vimrc
ln -vfs ~/repos/dotfiles/zsh/.zshrc ~/.zshrc
ln -vfs ~/repos/dotfiles/bash/.bashrc ~/.bashrc
