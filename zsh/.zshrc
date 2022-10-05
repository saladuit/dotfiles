
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
source $HOME/repos/dotfiles/zsh/environment.zsh
source $ZSH_CONFIG/options.zsh
source $ZSH_CONFIG/functions.zsh
source $ZSH_CONFIG/aliases.zsh
source $ZSH_CONFIG/completion.zsh
source $ZSH_CONFIG/pure.zsh

# brew integration and config
if [ -d "${HOME}/.brew" ]
then
	source $ZSH_CONFIG/brewconfig.zsh
	mkdir -p ~/goinfre/docker
fi

eval "$(sheldon source)"

if [ -f /etc/zsh.cnf ]; then
 . /etc/zsh.cnf
fi
