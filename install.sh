#!/bin/bash

rm -rf ~/.vimrc ~/.zshrc ~/.bashrc

if [ ! -f "${HOME}/.local/bin/sheldon" ]
then
curl --proto '=https' -fLsS https://rossmacarthur.github.io/install/crate.sh | bash -s -- --repo rossmacarthur/sheldon --to ~/.local/bin
fi

ln -vfs ~/repos/dotfiles/nvim/.vimrc ~/.vimrc
ln -vfs ~/repos/dotfiles/zsh/.zshrc ~/.zshrc
ln -vfs ~/repos/dotfiles/bash/.bashrc ~/.bashrc

exec zsh

sheldon init --shell zsh
sheldon add fsh --github zdharma-continuum/fast-syntax-highlighting
sheldon add alias-tips --github djui/alias-tips
sheldon add z --github rupa/z
sheldon add zsh-autocomplete --github marlonrichert/zsh-autocomplete
sheldon add zsh-autosuggestions --github zsh-users/zsh-autosuggestions
sheldon add oh-my-zsh --github ohmyzsh/ohmyzsh
sheldon add lsd --github Peltoche/lsd

exec zsh
