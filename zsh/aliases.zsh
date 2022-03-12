#Aliases
alias m="man"																											#Faster man
alias :q="exit"																											#Handy in Vim
alias j='jobs -l'																										#List all background jobs quickly
alias v="nvim"																											#Why not start Neovim a bit faster?.
alias ls="lsd" 																											#Colorizes your ls commands complete with icons, Requires lsd to be installed.
alias l='ls -la' 																										#If you use ls, it most likely is ls -la, why not shorten that to l?
alias cd=' cd'
alias ..=' cd ..; ls'
alias ...=' cd ..; cd ..; ls'
alias ....=' cd ..; cd ..; cd ..; ls'
alias cd..='..'
alias cd...='...'
alias cd....='....'
alias code='open -a "Visual Studio Code"'
alias aedit=" $EDITOR $ZSH_CONFIG/aliases.zsh; source $ZSH_CONFIG/aliases.zsh"
alias fedit=" $EDITOR $ZSH_CONFIG/functions.zsh; source $ZSH_CONFIG/functions.zsh"
alias viedit=" $EDITOR $HOME/.vim/vimrc"
alias reload='zgen update && source ~/.zshrc'																			#Reload .zshrc
alias clearhome='echo -n "Available before:\t"; df -h | grep /Users/lde-la-h | sed '\''s/  */:/g'\'' | cut -d '\'':'\'' -f 4; unsetopt nomatch; rm -Rf ~/Library/*.42_cache_bak*; rm -Rf ~/*.42_cache_bak_*; setopt nomatch; echo -n "Available after:\t"; df -h | grep /Users/lde-la-h | sed '\''s/  */:/g'\'' | cut -d '\'':'\'' -f 4;'

#git
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
alias gr='git remote'
alias grs='git remote show'
alias glo='git log --pretty="oneline"'
alias glol='git log --graph --oneline --decorate'

#Build
alias compr='gcc -Wall -Wextra -Werror *.c && ./a.out && rm a.out' 														#compile all .c files in the current directory, run the executable and delete it afterwards. 
alias compra='gcc -Wall -Wextra -Werror *.c && ./a.out' 																#compile all .c files in the current directory, run the executable with any argument after the alias.
alias norme='norminette -R CheckForbiddenSourceHeader' 																	#Norminette alias with the old flags. (That may or may not be used)
alias valg='gcc *.c -ggdb3 && valgrind --show-leak-kinds=all --leak-check=full --track-origins=yes ./a.out && rm a.out'	#Compiles all .c files in the current directory and runs the executable trough valgrind then deletes it.
alias valga='gcc *.c -ggdb3 && valgrind --show-leak-kinds=all --leak-check=full --track-origins=yes ./a.out' 			#Compiles all .c files in the current directory and runs the executable trough valgrind with any arguments you give it.

# N-Triples aliases from http://blog.datagraph.org/2010/03/grepping-ntriples
alias rdf-count="awk '/^\s*[^#]/ { n += 1 } END { print n }'"
alias rdf-lengths="awk '/^\s*[^#]/ { print length }'"
alias rdf-length-avg="awk '/^\s*[^#]/ { n += 1; s += length } END { print s/n }'"
alias rdf-length-max="awk 'BEGIN { n=0 } /^\s*[^#]/ { if (length>n) n=length } END { print n }'"
alias rdf-length-min="awk 'BEGIN { n=1e9 } /^\s*[^#]/ { if (length>0 && length<n) n=length } END { print (n<1e9 ? n : 0) }'"
alias rdf-subjects="awk '/^\s*[^#]/ { print \$1 }' | uniq"
alias rdf-predicates="awk '/^\s*[^#]/ { print \$2 }' | uniq"
alias rdf-objects="awk '/^\s*[^#]/ { ORS=\"\"; for (i=3;i<=NF-1;i++) print \$i \" \"; print \"\n\" }' | uniq"
alias rdf-datatypes="awk -F'\x5E' '/\"\^\^</ { print substr(\$3, 2, length(\$3)-4) }' | uniq"

#Miscellaneous
alias allcolor='for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done'	#Show all the terminal colors for your current theme
alias rainbow='printf "$BBLA\n$BRED\n$BGRE\n$BYEL\n$BBLU\n$BMAG\n$BCYA\n$BWHI\n\n"'										#print the 8 terminal colors for your current theme in a rainbow
