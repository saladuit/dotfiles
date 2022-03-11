# **************************************************************************** #
#                                                                              #
#                                                     .--.  _                  #
#    environment.zsh                                 |o_o || |                 #
#                                                    |:_/ || |_ _   ___  __    #
#    By: safoh <safoh@student.codam.nl>             //   \ \ __| | | \ \/ /    #
#                                                  (|     | )|_| |_| |>  <     #
#    Created: 2022/03/10 16:05:50 by safoh        /'\_   _/`\__|\__,_/_/\_\    #
#    Updated: 2022/03/11 12:04:34 by safoh        \___)=(___/                  #
#                                                                              #
# **************************************************************************** #

# Basic environment settings related to the zsh compiliation (not private)
#

# XDG Base Directory Specification
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export ZSH_CONFIG="$XDG_CONFIG_HOME/zsh"
export ZSH_CACHE="$XDG_CACHE_HOME/zsh"
mkdir -p $ZSH_CACHE

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# executable search path
export PATH=/usr/local/sbin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/sbin:$PATH
# export PATH=$HOME/opt/bin:$PATH
export LIBRARY_PATH="~/.brew/lib:$LIBRARY_PATH"
export LIBRARY_PATH=".brew/opt/:$LIBRARY_PATH"
export C_INCLUDE_PATH="/usr/local/include:$C_INCLUDE_PATH"
export CPLUS_INCLUDE_PATH="/usr/local/include:$CPLUS_INCLUDE_PATH"
export C_INCLUDE_PATH="~/.brew/include:$C_INCLUDE_PATH"
export CPLUS_INCLUDE_PATH="~/.brew/include:$CPLUS_INCLUDE_PATH"

#History Settings
export HISTFILE="$ZSH_CACHE/.zsh_history"	#History File Location
export HISTSIZE=1000000			#The number of items for the internal history list
export SAVEHIST=1000000			#Maximum number of items for the history file

#42 Header Information
export INTRAUSER=$USER					#Change this to your Intra Username
export MAIL="safoh@student.codam.nl"	#Change this to your 42 Email Adress (username@student.codam.nl for Codam Students)

export DATE=$(date +%d-%m-%Y)

export EDITOR="nvim"
export VISUAL="nvim"

bindkey -v
export KEYTIMEOUT=1
