# **************************************************************************** #
#                                                                              #
#                                                     .--.  _                  #
#    fzf.zsh                                         |o_o || |                 #
#                                                    |:_/ || |_ _   ___  __    #
#    By: safoh <safoh@student.codam.nl>             //   \ \ __| | | \ \/ /    #
#                                                  (|     | )|_| |_| |>  <     #
#    Created: 2022/03/11 16:38:26 by safoh        /'\_   _/`\__|\__,_/_/\_\    #
#    Updated: 2022/03/11 16:38:27 by safoh        \___)=(___/                  #
#                                                                              #
# **************************************************************************** #

# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/safoh/.brew/opt/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/safoh/.brew/opt/fzf/bin"
fi

# Man path
# --------
if [[ ! "$MANPATH" == */usr/local/opt/fzf/man* && -d "/usr/local/opt/fzf/man" ]]; then
  export MANPATH="$MANPATH:/usr/local/opt/fzf/man"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/safoh/.brew/opt/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/safoh/.brew/opt/fzf/shell/key-bindings.zsh"
