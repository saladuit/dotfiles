# **************************************************************************** #
#                                                                              #
#                                                     .--.  _                  #
#    completion.zsh                                  |o_o || |                 #
#                                                    |:_/ || |_ _   ___  __    #
#    By: safoh <safoh@student.codam.nl>             //   \ \ __| | | \ \/ /    #
#                                                  (|     | )|_| |_| |>  <     #
#    Created: 2022/03/16 16:37:34 by safoh        /'\_   _/`\__|\__,_/_/\_\    #
#    Updated: 2022/03/16 16:37:37 by safoh        \___)=(___/                  #
#                                                                              #
# **************************************************************************** #

#Press up and down to search to matching history
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
#Case insensitive tab completion, Also enables cd doc/fo/su to go to /documents/folder/subfolder
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
