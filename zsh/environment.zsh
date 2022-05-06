# **************************************************************************** #
#                                                                              #
#                                                     .--.  _                  #
#    environment.zsh                                    :+:    :+:             #
#                                                    |:_/ || |_ _   ___  __    #
#    By: safoh <safoh@student.codam.nl>             //   \ \ __| | | \ \/ /    #
#                                                  (|     | )|_| |_| |>  <     #
#    Created: 2022/03/10 16:05:50 by safoh        /'\_   _/`\__|\__,_/_/\_\    #
#    Updated: 2022/04/23 18:08:01 by safoh         ########   odam.nl          #
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

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.zgen/ohmyzsh/ohmyzsh-master/"

# Executable search path
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/sbin:$PATH
export PATH=$XDG_CONFIG_HOME/.cargo/bin:$PATH

# Add brew to path
export PATH=$HOME/.brew/bin:$PATH
export LIBRARY_PATH=~/.brew/lib:$LIBRARY_PATH
# Set Homebrew temporary folders
export HOMEBREW_CACHE=/tmp/$USER/Homebrew/Caches
export HOMEBREW_TEMP=/tmp/$USER/Homebrew/Temp
# Criterion
export C_INCLUDE_PATH=$HOME/.brew/Cellar/criterion/2.4.0/include:$C_INCLUDE_PATH
export C_INCLUDE_PATH=/usr/local/include:$C_INCLUDE_PATH
export PATH="/Users/safoh/.brew/opt/llvm/bin:$PATH"

# Rust
export RUSTUP_HOME="$XDG_CONFIG_HOME/.rustup"
export CARGO_HOME="$XDG_CONFIG_HOME/.cargo"

# History Settings
export LESSHISTFILE=$LESS_CACHE/history
export HISTFILE=$ZSH_CACHE/.zsh_history	#History File Location
export HISTSIZE=1000000			#The number of items for the internal history list
export SAVEHIST=1000000			#Maximum number of items for the history file

# 42 Header Information
export INTRAUSER=$USER					#Change this to your Intra Username
export MAIL="safoh@student.codam.nl"	#Change this to your 42 Email Adress (username@student.codam.nl for Codam Students)

export DATE=$(date +%d-%m-%Y)

export EDITOR="nvim"
export VISUAL="nvim"

export KEYTIMEOUT=1
