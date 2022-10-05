#!/bin/bash

rm -rf ~/.vimrc ~/.zshrc ~/.bashrc

if [ ! -f "${HOME}/.local/bin/sheldon" ]
then
curl --proto '=https' -fLsS https://rossmacarthur.github.io/install/crate.sh | bash -s -- --repo rossmacarthur/sheldon --to ~/.local/bin
fi

mkdir -p ~/.config/nvim
ln -vfs ~/repos/dotfiles/nvim/init.vim ~/.config/nvim

ln -vfs ~/repos/dotfiles/nvim/.vimrc ~/.vimrc
ln -vfs ~/repos/dotfiles/zsh/.zshrc ~/.zshrc
ln -vfs ~/repos/dotfiles/bash/.bashrc ~/.bashrc

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

sheldon init --shell zsh
sheldon add fsh --github zdharma-continuum/fast-syntax-highlighting
sheldon add alias-tips --github djui/alias-tips
sheldon add z --github rupa/z
sheldon add zsh-autocomplete --github marlonrichert/zsh-autocomplete
sheldon add zsh-autosuggestions --github zsh-users/zsh-autosuggestions
sheldon add oh-my-zsh --github ohmyzsh/ohmyzsh
sheldon add pure --github sindresorhus/pure --use async.zsh pure.zsh

exec zsh
zstyle :prompt:pure:git:branch color green
zstyle :prompt:pure:path color cyan
# coc-clangd coc-json
