
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

typeset -ga sources

sources+="$ZSH_CONFIG/options.zsh"
sources+="$ZSH_CONFIG/functions.zsh"
sources+="$ZSH_CONFIG/aliases.zsh"
sources+="$ZSH_CONFIG/completion.zsh"

# brew integration and config
if [ -d "${HOME}/.brew" ]
then
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
	[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
	sources+="$ZSH_CONFIG/brewconfig.zsh"
	mkdir -p ~/goinfre/docker
fi

# try to include all sources
foreach file (`echo $sources`)
    if [[ -a $file ]]; then
        source $file
    fi
end

eval "$(sheldon source)"

