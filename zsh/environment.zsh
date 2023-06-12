# **************************************************************************** #
#                                                                              #
#                                                     .--.  _                  #
#    environment.zsh                                    :+:      :+:    :+:    #
#                                                    |:_/ || |_ _   ___  __    #
#    By: safoh <safoh@student.codam.nl>             //   \ \ __| | | \ \/ /    #
#                                                  (|     | )|_| |_| |>  <     #
#    Created: 2022/09/27 14:02:47 by safoh        /'\_   _/`\__|\__,_/_/\_\    #
#    Updated: 2023/02/06 12:44:15 by saladin          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Basic environment settings related to the zsh compiliation (not private)
#

# XDG Config Base Directory Specification
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.data"

export ZSH="$HOME/.data/sheldon/repos/github.com/ohmyzsh/ohmyzsh"
# Zsh Config & Cache
export ZSH_CONFIG="$HOME/repos/dotfiles/zsh"
mkdir -p $ZSH_CONFIG
export ZSH_CACHE="$XDG_CACHE_HOME/zsh"
export LESS_CACHE="$XDG_CACHE_HOME/less"
mkdir -p $ZSH_CACHE
mkdir -p $LESS_CACHE
# Nvim 
export NVIM_CONFIG="$HOME/repos/dotfiles/nvim"
export NVIM_DATA="$XDG_DATA_HOME/nvim/autoload"
mkdir -p $NVIM_DATA
export MYVIMRC="$HOME/.vimrc"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/sbin:$PATH"
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"

# TODO make it work for Linux and personal mac
if [ -d "/Users/safoh/goinfre/.brew/" ]
then 
	eval "$(/Users/safoh/goinfre/.brew/bin/brew shellenv)"
fi

if [ -d "/opt/homebrew/bin" ]
then
	export PATH="/opt/homebrew/bin:$PATH"
fi

# perl config
if [ -d "/home/saladuit" ]
then 
	PATH="/home/saladuit/perl5/bin${PATH:+:${PATH}}"; export PATH;
	PERL5LIB="/home/saladuit/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
	PERL_LOCAL_LIB_ROOT="/home/saladuit/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
	PERL_MB_OPT="--install_base \"/home/saladuit/perl5\""; export PERL_MB_OPT;
	PERL_MM_OPT="INSTALL_BASE=/home/saladuit/perl5"; export PERL_MM_OPT;
fi 

# Rustlings
if [ -d "$HOME/.cargo/bin" ]
then
	export PATH="$PATH:$HOME/.cargo/bin"
fi

# History Settings
export LESSHISTFILE=$LESS_CACHE/less_history
export HISTFILE=$ZSH_CACHE/zsh_history	#History File Location
export HISTSIZE=1000000			#The number of items for the internal history list
export SAVEHIST=1000000			#Maximum number of items for the history file

# 42 Header Information
export INTRAUSER=safoh				#Change this to your Intra Username
export MAIL="safoh@student.codam.nl"	#Change this to your 42 Email Adress (username@student.codam.nl for Codam Students)

export DEBUGINFOD_URLS="https://debuginfod.archlinux.org"
export DATE=$(date +%d-%m-%Y)
export EDITOR="nvim"
