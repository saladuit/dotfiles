
# **************************************************************************** #
#                                                                              #
#                                                     .--.  _                  #
#    .zshrc                                          |o_o || |                 #
#                                                    |:_/ || |_ _   ___  __    #
#    By: safoh <safoh@student.codam.nl>             //   \ \ __| | | \ \/ /    #
#                                                  (|     | )|_| |_| |>  <     #
#    Created: 2022/03/10 15:35:35 by safoh        /'\_   _/`\__|\__,_/_/\_\    #
#    Updated: 2022/04/11 15:07:34 by safoh        \___)=(___/                  #
#                                                                              #
# **************************************************************************** #

# the main RC file (will be linked to ~/.zshrc)
#
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source ~/.config/zgen/romkatv/powerlevel10k-master/powerlevel10k.zsh-theme
[[ ! -f ~/repos/dotfiles/zsh/.p10k.zsh ]] || source ~/repos/dotfiles/zsh/.p10k.zsh

source $HOME/.config/zsh/environment.zsh

typeset -ga sources

#Zgen
sources+="${HOME}/.config/zgen/zgen.zsh"
sources+="$ZSH_CONFIG/environment.zsh"
sources+="$ZSH_CONFIG/options.zsh"
sources+="$ZSH_CONFIG/functions.zsh"
sources+="$ZSH_CONFIG/aliases.zsh"
sources+="$ZSH_CONFIG/completion.zsh"
# oh-my-zsh integration and config
sources+="$ZSH/oh-my-zsh.sh"
# brew integration and config
if [ -z "${GNOME_SHELL_SESSION_MODE}" ]
then
	sources+="$ZSH_CONFIG/brewconfig.zsh"
fi

# try to include all sources
foreach file (`echo $sources`)
    if [[ -a $file ]]; then
        source $file
    fi
end

mkdir -p ~/goinfre/docker

if ! zgen saved
then
	zgen load zdharma-continuum/fast-syntax-highlighting
	zgen load djui/alias-tips
	zgen load rupa/z
	zgen load marlonrichert/zsh-autocomplete
	zgen load zsh-users/zsh-autosuggestions
	zgen load oh-my-zsh
	zgen load romkatv/powerlevel10k
	zgen load Peltoche/lsd
	zgen save
fi

if [ -f /etc/zsh.cnf ]; then
 . /etc/zsh.cnf
fi
