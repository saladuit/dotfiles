# **************************************************************************** #
#                                                                              #
#                                                     .--.  _                  #
#    aliases.zsh                                     |o_o || |                 #
#                                                    |:_/ || |_ _   ___  __    #
#    By: safoh <safoh@student.codam.nl>             //   \ \ __| | | \ \/ /    #
#                                                  (|     | )|_| |_| |>  <     #
#    Created: 2022/03/13 13:33:10 by safoh        /'\_   _/`\__|\__,_/_/\_\    #
#    Updated: 2023/02/23 22:36:20 by safoh        \___)=(___/                  #
#                                                                              #
# **************************************************************************** #

# General
alias sudo='sudo '
alias m="man"																											#Faster man
alias :q="exit"																											#Handy in Vim
alias j='jobs -l'																										#List all background jobs quickly
alias v="nvim"																											#Why not start Neovim a bit faster?.
alias ls="lsd" 																											#Colorizes your ls commands complete with icons, Requires lsd to be installed.

# File navigation
alias cd=' cd'
alias ..=' cd ..; l'
alias ...=' cd ..; cd ..; l'
alias ....=' cd ..; cd ..; cd ..; l'
alias .....=' cd ..; cd ..; cd ..; cd ..; l'
alias cd..='..'
alias cd...='...'
alias cd.....='.....'

# git
alias gs='git status'
alias ga='git add'
alias gp='git push'
alias gpo='git push origin'
alias gtd='git tag --delete'
alias gtdr='git tag --delete origin'
alias gr='git branch -r'
alias gplo='git pull origin'
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gco='git checkout '
alias gl='git log'
alias gcl='git clone'
alias gr='git remote'
alias grs='git remote show'
alias glo='git log --pretty="oneline"'
alias glol='git log --graph --oneline --decorate'

# Docker
alias audus-docker-pwd='docker run -it --rm --init -v "$PWD:/pwd" saladuit/audus:latest sh -c "cd /pwd; bash"'
alias codam-docker-pwd='docker run -it --rm --init -v "$PWD:/pwd" saladuit/codam:latest sh -c "cd /pwd; bash"'

# Various
alias code='open -a "Visual Studio Code"'
alias francinette=/Users/safoh/francinette/tester.sh
alias paco=/Users/safoh/francinette/tester.sh

if [ -f "~/Cleaner_42.sh" ]
then
	#Codam specific
	alias cclean='bash ~/Cleaner_42.sh'
fi
