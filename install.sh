#!/bin/bash

rm -rf ~/.vimrc ~/.zshrc ~/.bashrc

ln -vfs ~/repos/dotfiles/nvim/.vimrc ~/.vimrc
ln -vfs ~/repos/dotfiles/zsh/.zshrc ~/.zshrc
ln -vfs ~/repos/dotfiles/bash/.bashrc ~/.bashrc
