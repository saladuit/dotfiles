# **************************************************************************** #
#                                                                              #
#                                                     .--.  _                  #
#    environment.zsh                                 |o_o || |                 #
#                                                    |:_/ || |_ _   ___  __    #
#    By: safoh <safoh@student.codam.nl>             //   \ \ __| | | \ \/ /    #
#                                                  (|     | )|_| |_| |>  <     #
#    Created: 2022/03/10 16:05:50 by safoh        /'\_   _/`\__|\__,_/_/\_\    #
#    Updated: 2022/03/11 17:29:12 by safoh        \___)=(___/                  #
#                                                                              #
# **************************************************************************** #

# Basic environment settings related to the zsh compiliation (not private)
#

# XDG Base Directory Specification
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export ZSH_CONFIG="$XDG_CONFIG_HOME/zsh"
export ZSH_CACHE="$XDG_CACHE_HOME/zsh"
export LESS_CACHE="$XDG_CACHE_HOME/less"
mkdir -p $ZSH_CACHE

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# executable search path
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/sbin:$PATH

# brew
export LIBRARY_PATH=~/.brew/lib:$LIBRARY_PATH
export C_INCLUDE_PATH=$HOME/.brew/Cellar/criterion/2.4.0/include:$C_INCLUDE_PATH

#History Settings
export LESSHISTFILE=$LESS_CACHE/history
export HISTFILE=$ZSH_CACHE/.zsh_history	#History File Location
export HISTSIZE=1000000			#The number of items for the internal history list
export SAVEHIST=1000000			#Maximum number of items for the history file

#42 Header Information
export INTRAUSER=$USER					#Change this to your Intra Username
export MAIL="safoh@student.codam.nl"	#Change this to your 42 Email Adress (username@student.codam.nl for Codam Students)

export DATE=$(date +%d-%m-%Y)

export EDITOR="nvim"
export VISUAL="nvim"

export KEYTIMEOUT=1
