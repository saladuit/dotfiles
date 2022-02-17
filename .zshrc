# **************************************************************************** #
#                                                                              #
#                                                     .--.  _                  #
#    .zshrc                                          |o_o || |                 #
#                                                    |:_/ || |_ _   ___  __    #
#    By: djonker <djonker@student.codam.nl>         //   \ \ __| | | \ \/ /    #
#                                                  (|     | )|_| |_| |>  <     #
#    Created: 2020/10/22 22:55:54 by djonker      /'\_   _/`\__|\__,_/_/\_\    #
#    Updated: 2022/02/17 09:55:06 by marvin       \___)=(___/                  #
#                                                                              #
# **************************************************************************** #

#Confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#History Settings
export HISTFILE=~/.zsh_history	#History File Location
export HISTSIZE=1000000			#The number of items for the internal history list
export SAVEHIST=1000000			#Maximum number of items for the history file
setopt EXTENDED_HISTORY			#Writes timestamps to History file
setopt HIST_IGNORE_ALL_DUPS		#Prevents you from writing duplicates in History file
setopt HIST_FIND_NO_DUPS		#Prevents you from finding duplicates in History file
setopt inc_append_history	 	#Makes sure you actually append to the history file

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

#P10k
source ~/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#Aliases
alias code='open -a "Visual Studio Code"'
alias hk='cat ~/hotkeys'																								#Prints all custom hotkeys
alias sudo='sudo '																										#Makes sure you can run aliases trough sudo
alias ffs='sudo !!'																										#ffs again?
alias distro='cat /etc/*-release'																						#What Distro am I on again?
alias reload='zgen update && source ~/.zshrc'																			#Reload .zshrc
alias tk='take'																											#Create a directory and cd in it right away
alias cd1="cd .."																										#Go up 1 directory
alias cd2="cd ../.."																									#Go up 2 directories
alias cd3="cd ../../.."																									#Go up 3 directories
alias cd4="cd ../../../.."																								#Go up 4 directories
alias cd5="cd ../../../../.."																							#Go up 5 directories
alias cd6="cd ../../../../../.."																						#Go up 6 directories
alias cd7="cd ../../../../../../.."																						#Go up 7 directories
alias cd8="cd ../../../../../../../.."																					#Go up 8 directories
alias cd9="cd ../../../../../../../../.."																				#Go up 9 directories
alias scls="systemctl list-unit-files"																					#Systemctl List
alias scre="sudo systemctl restart "																					#Systemctl Restart
alias scst="sudo systemctl start "																						#Systemctl Start
alias scsp="sudo systemctl stop "																						#Systemctl Stop
alias scen="sudo systemctl enable "																						#Systemctl Enable
alias scdi="sudo systemctl disable "																					#Systemctl Disable
alias fwd='firewall-cmd'																								#firewalld
alias fwdlist="firewall-cmd --list-all-zones"																			#Firewalld list all zones
alias fwdre='firewall-cmd --reload'																						#Firewalld reload settings
alias g="git"																											#Git
alias gi="git init"																										#Git Init Git Directory
alias ga="git add *"																									#Git Add All in Current Directory
alias gc="git commit -m"																								#Git Commit Message, arguement it with "Message"
alias gp="git push"																										#Git Push
alias zcf="v ~/.zshconfig"																								#Adjust your zsh config file
alias vcf="v ~/vimconfig"																								#Adjust your vim config file
alias md='mkdir -p'																										#Make Directory
alias rmd='rm -rf'																										#Remove Directory
alias me="ifconfig | grep "inet " | cut -b 9- | cut -d" " -f2"															#Print your IP Adresses
alias allcolor='for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done'	#Show all the terminal colors for your current theme
alias rainbow='printf "$BBLA\n$BRED\n$BGRE\n$BYEL\n$BBLU\n$BMAG\n$BCYA\n$BWHI\n\n"'										#print the 8 terminal colors for your current theme in a rainbow
alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS} '															#Search for keyword inside files starting from current directory
alias t='tail -f'																										#Very handy for logs
alias dud='du -d 1 -h'																									#List Directories
alias duf='du -sh *'																									#List Files
alias h='history'																										#Show ZSH History
alias hgrep="fc -El 0 | grep"																							#Grep from History
alias m="man"																											#Faster man
alias :q="exit"																											#Handy in Vim
alias j='jobs -l'																										#List all background jobs quickly
alias sv='sudo v'																										#Launch nvim with sudo rights
alias ports='netstat -tulanp'																							#Show active network connections and their ports
alias v="nvim"																											#Why not start Neovim a bit faster?.
alias compr='gcc -Wall -Wextra -Werror *.c && ./a.out && rm a.out' 														#compile all .c files in the current directory, run the executable and delete it afterwards. 
alias compra='gcc -Wall -Wextra -Werror *.c && ./a.out' 																#compile all .c files in the current directory, run the executable with any argument after the alias.
alias norme='norminette -R CheckForbiddenSourceHeader' 																	#Norminette alias with the old flags. (That may or may not be used)
alias ls="lsd" 																											#Colorizes your ls commands complete with icons, Requires lsd to be installed.
alias l='ls -la' 																										#If you use ls, it most likely is ls -la, why not shorten that to l?
alias valg='gcc *.c -ggdb3 && valgrind --show-leak-kinds=all --leak-check=full --track-origins=yes ./a.out && rm a.out'	#Compiles all .c files in the current directory and runs the executable trough valgrind then deletes it.
alias valga='gcc *.c -ggdb3 && valgrind --show-leak-kinds=all --leak-check=full --track-origins=yes ./a.out' 			#Compiles all .c files in the current directory and runs the executable trough valgrind with any arguments you give it.
alias normsh="checkbashisms" 																							#Check if shell scripts work with sh

#Colors Normal, Fat, Background and Reset
CBLA='\e[0;30m'
CRED='\e[0;31m'
CGRE='\e[0;32m'
CYEL='\e[0;33m'
CBLU='\e[0;34m'
CMAG='\e[0;35m'
CCYA='\e[0;36m'
CWHI='\e[1;37m'
FBLA='\e[1;30m'
FRED='\e[1;31m'
FGRE='\e[1;32m'
FYEL='\e[1;33m'
FBLU='\e[1;34m'
FMAG='\e[1;35m'
FCYA='\e[1;36m'
FWHI='\e[1;37m'
BBLA='\e[40m'
BRED='\e[41m'
BGRE='\e[42m'
BYEL='\e[43m'
BBLU='\e[44m'
BMAG='\e[45m'
BCYA='\e[46m'
BWHI='\e[47m'
NOCO="\e[m"

#Custom Config File
source ~/.zshconfig

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

#Press Esc twice to put sudo in front of your previous command.
sudoswitch() {
    [[ -z $BUFFER ]] && zle up-history
    if [[ $BUFFER == sudo\ * ]]; then
        LBUFFER="${LBUFFER#sudo }"
    elif [[ $BUFFER == $EDITOR\ * ]]; then
        LBUFFER="${LBUFFER#$EDITOR }"
        LBUFFER="sudoedit $LBUFFER"
    elif [[ $BUFFER == sudoedit\ * ]]; then
        LBUFFER="${LBUFFER#sudoedit }"
        LBUFFER="$EDITOR $LBUFFER"
    else
        LBUFFER="sudo $LBUFFER"
    fi
}
zle -N sudoswitch
bindkey "\e\e" sudoswitch
bindkey -M vicmd '\e\e' sudoswitch

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
        PATH=${HOME}/bin:${PATH} \
    man "$@"
}

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

#Press up and down to search to matching history
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

#Case insensitive tab completion, Also enables cd doc/fo/su to go to /documents/folder/subfolder
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

#I really don't see the use for Flow Control
unsetopt flow_control

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

#take = mkdir -p and cd in one
function take() {
	md "$1"
	cd "$1"
}

#Fix TKL keys
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char
bindkey  "^[[5~"  beginning-of-line
bindkey  "^[[6~"  end-of-line

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

#Homebrew
source $HOME/.brewconfig.zsh
export C_INCLUDE_PATH="~/.brew/include:$C_INCLUDE_PATH"
export LIBRARY_PATH="~/.brew/lib:$LIBRARY_PATH"
if [ -f /etc/zsh.cnf ]; then
 . /etc/zsh.cnf
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

