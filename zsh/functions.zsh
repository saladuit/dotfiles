# **************************************************************************** #
#                                                                              #
#                                                     .--.  _                  #
#    functions.zsh                                   |o_o || |                 #
#                                                    |:_/ || |_ _   ___  __    #
#    By: safoh <safoh@student.codam.nl>             //   \ \ __| | | \ \/ /    #
#                                                  (|     | )|_| |_| |>  <     #
#    Created: 2022/03/10 16:19:18 by safoh        /'\_   _/`\__|\__,_/_/\_\    #
#    Updated: 2022/03/13 13:22:23 by safoh        \___)=(___/                  #
#                                                                              #
# **************************************************************************** #
#
# functions and key bindings to that functions
#

# Top ten memory hogs
# http://www.commandlinefu.com/commands/view/7139/top-ten-memory-hogs
memtop() {ps -eorss,args | gsort -nr | gpr -TW$COLUMNS | ghead}
zle -N memtop

# Rename files in a directory in an edited list fashion
# http://www.commandlinefu.com/commands/view/7818/
function massmove () {
    ls > ls; paste ls ls > ren; vi ren; sed 's/^/mv /' ren|bash; rm ren ls
}
# fix for widgets can only be called when ZLE is active
TRAPWINCH() {
  zle && { zle reset-prompt; zle -R }
}

# Put a console clock in top right corner
# http://www.commandlinefu.com/commands/view/7916/
function clock () {
    while sleep 1;
    do
        tput sc
        tput cup 0 $(($(tput cols)-29))
        date
        tput rc
    done &
}

# a rough equivalent to "hg out"
# http://www.doof.me.uk/2011/01/08/list-outgoing-changesets-in-git/
git-out() {
    for i in $(git push -n $* 2>&1 | awk '$1 ~ /[a-f0-9]+\.\.[a-f0-9]+/ { print $1; }')
    do
        git xlog $i
    done
}

#Make the man pages all colorful
function man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[0;37;102m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[4;32m") \
        PAGER="${commands[less]:-$PAGER}" \
        _NROFF_U=1 \
        GROFF_NO_SGR=1 \
        PATH=${PATH}${HOME}/bin: \
    man "$@"
}

#Press Ctrl + Z again to bring stuff back to the forground.
backforeswitch () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line -w
  else
    zle push-input -w
    zle clear-screen -w
  fi
}
zle -N backforeswitch
bindkey '^Z' backforeswitch

#The git riddle
function iacp() {
if [ -z "$3" ]
then
	echo "Usage: iacp <name> <link> <comment>"
else
	git init
	git add *
	git commit -m "$3"
	git remote add $1 $2
	git push --set-upstream $1 master
fi
}

#The git push
function acp() {
if [ -z "$1" ]
then
	echo "Usage: acp <comment>"
else
	git add .
	git commit -m "$1"
	git push
fi
}

#Really clear the screen with Ctrl + L
clearbetter () {
  BUFFER="clear"
  zle accept-line -w
}
zle -N clearbetter
bindkey '^L' clearbetter

#Reload ZSH with Ctrl + S
resourcezsh () {
  BUFFER="exec -l zsh"
  zle accept-line -w
  BUFFER="clear"
  zle accept-line -w
}
zle -N resourcezsh
bindkey '^S' resourcezsh

#Exit with Ctrl + Q
ctrlqexit () {
  BUFFER=":q"
  zle accept-line -w
}
zle -N ctrlqexit
bindkey '^Q' ctrlqexit


# Creates a TAR archive of a file or folder.
function maketar() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }

# Create a ZIP archive of a file or folder.
function makezip() { zip -r "${1%%/}.zip" "$1" ; }

#Extracts any type of archive automagically
function extract {
 if [ -z "$1" ]; then
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
 else
    if [ -f $1 ] ; then
        case $1 in
          *.tar.bz2)   tar xvjf $1    ;;
          *.tar.gz)    tar xvzf $1    ;;
          *.tar.xz)    tar xvJf $1    ;;
          *.lzma)      unlzma $1      ;;
          *.bz2)       bunzip2 $1     ;;
          *.rar)       unrar x -ad $1 ;;
          *.gz)        gunzip $1      ;;
          *.tar)       tar xvf $1     ;;
          *.tbz2)      tar xvjf $1    ;;
          *.tgz)       tar xvzf $1    ;;
          *.zip)       unzip $1       ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7z x $1        ;;
          *.xz)        unxz $1        ;;
          *.exe)       cabextract $1  ;;
          *)           echo "extract: '$1' - unknown archive method" ;;
        esac
    else
        echo "$1 - file does not exist"
    fi
fi
}
