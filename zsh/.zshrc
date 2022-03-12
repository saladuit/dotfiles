# **************************************************************************** #
#                                                                              #
#                                                     .--.  _                  #
#    .zshrc                                          |o_o || |                 #
#                                                    |:_/ || |_ _   ___  __    #
#    By: safoh <safoh@student.codam.nl>             //   \ \ __| | | \ \/ /    #
#                                                  (|     | )|_| |_| |>  <     #
#    Created: 2022/03/10 15:35:35 by safoh        /'\_   _/`\__|\__,_/_/\_\    #
#    Updated: 2022/03/11 16:40:47 by safoh        \___)=(___/                  #
#                                                                              #
# **************************************************************************** #

## take tike to measure boot time
#bootTimeStart=$(gdate +%s%N 2>/dev/null || date +%s%N)

# the main RC file (will be linked to ~/.zshrc)
#
source $HOME/.config/zsh/environment.zsh


typeset -ga sources
sources+="$ZSH_CONFIG/environment.zsh"
sources+="$ZSH_CONFIG/options.zsh"
sources+="$ZSH_CONFIG/functions.zsh"
sources+="$ZSH_CONFIG/aliases.zsh"

# fasd integration and config
sources+="$ZSH_CONFIG/fasd.zsh"

# fzf integration and config
sources+="$ZSH_CONFIG/fzf.zsh"

# brew integration and config
sources+="$ZSH_CONFIG/brewconfig.zsh"


# try to include all sources
foreach file (`echo $sources`)
    if [[ -a $file ]]; then
        # sourceIncludeTimeStart=$(gdate +%s%N)
        source $file
        # sourceIncludeDuration=$((($(gdate +%s%N) - $sourceIncludeTimeStart)/1000000))
        # echo $sourceIncludeDuration ms runtime for $file
    fi
end

# oh-my-zsh integration and config
source $ZSH/oh-my-zsh.sh


#Zgen
source "${HOME}/.zgen/zgen.zsh"

if ! zgen saved
then
	zgen load zdharma/fast-syntax-highlighting
	zgen load djui/alias-tips
	zgen load zsh-users/zsh-autosuggestions
	zgen load rupa/z
	zgen load unixorn/fzf-zsh-plugin
#	zgen load marlonrichert/zsh-autocomplete
#	zgen load b4b4r07/enhancd
#	zgen load zpm-zsh/colorize
#	zgen load bhayward93/Linus-rants-ZSH
	zgen save
fi


plugins=(git vi-mode)

#bootTimeEnd=$(gdate +%s%N 2>/dev/null || date +%s%N)
#bootTimeDuration=$((($bootTimeEnd - $bootTimeStart)/1000000))
#echo $bootTimeDuration ms overall boot duration
#P10k
#Confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  #source ${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh
#fi
source ~/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
if [ -f /etc/zsh.cnf ]; then
 . /etc/zsh.cnf
fi
