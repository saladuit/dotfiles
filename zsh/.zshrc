
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
source $HOME/.config/zsh/environment.zsh

typeset -ga sources
sources+="$ZSH_CONFIG/environment.zsh"
sources+="$ZSH_CONFIG/options.zsh"
sources+="$ZSH_CONFIG/functions.zsh"
sources+="$ZSH_CONFIG/aliases.zsh"
sources+="$ZSH_CONFIG/completion.zsh"

# fasd integration and config
sources+="$ZSH_CONFIG/fasd.zsh"

# brew integration and config
sources+="$ZSH_CONFIG/brewconfig.zsh"

#Zgen
sources+="${HOME}/.config/zsh/zgen/zgen.zsh"

# try to include all sources
foreach file (`echo $sources`)
    if [[ -a $file ]]; then
        source $file
    fi
end

source ~/.zgen/ohmyzsh/ohmyzsh-master/plugins/git/git.plugin.zsh
if ! zgen saved
then
	zgen load zdharma-continuum/fast-syntax-highlighting
	zgen load djui/alias-tips
	zgen load rupa/z
	zgen load marlonrichert/zsh-autocomplete
	zgen load b4b4r07/enhancd
	zgen load zsh-users/zsh-autosuggestions
	zgen load ohmyzsh/ohmyzsh
	zgen load romkatv/powerlevel10k
	zgen load Peltoche/lsd
	zgen save
fi
ZSH_THEME="robbyrussell"
plugins=(git vi-mode)
autoload -Uz compinit
compinit
source ~/.zgen/romkatv/powerlevel10k-master/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
if [ -f /etc/zsh.cnf ]; then
 . /etc/zsh.cnf
fi
