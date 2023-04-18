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
# Executable search path
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/sbin:$PATH"
export PATH="$HOME/.brew/Cellar/llvm/15.0.7/bin/clangd:$PATH"
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"

# perl config
PATH="/home/saladuit/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/saladuit/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/saladuit/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/saladuit/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/saladuit/perl5"; export PERL_MM_OPT;

if [ -d "${HOME}/.brew" ]
then
	# Add brew to path
	export PATH="$HOME/.brew/bin:$PATH"
	export LIBRARY_PATH="$HOME/.brew/lib:$LIBRARY_PATH"
	# Set Homebrew temporary folders
	export HOMEBREW_CACHE="tmp/$USER/Homebrew/Caches"
	export HOMEBREW_TEMP="/tmp/$USER/Homebrew/Temp"
	# Criterion
	export C_INCLUDE_PATH="$HOME/.brew/Cellar/criterion/2.4.1_2/include":$C_INCLUDE_PATH
	export C_INCLUDE_PATH="/usr/local/include:$C_INCLUDE_PATH"
	export PATH="/Users/$USER/.brew/opt/llvm/bin:$PATH"
fi
if [ -d "/opt/homebrew/bin" ]
then 
export PATH="/opt/homebrew/bin/:$PATH"
fi
if [ -d "/opt/homebrew/sbin" ]
then 
export PATH="/opt/homebrew/sbin/:$PATH"
fi
# Rustlings
export PATH="$HOME/.cargo/bin:$PATH"
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
