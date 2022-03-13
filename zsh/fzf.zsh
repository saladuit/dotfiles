# **************************************************************************** #
#                                                                              #
#                                                     .--.  _                  #
#    fzf.zsh                                         |o_o || |                 #
#                                                    |:_/ || |_ _   ___  __    #
#    By: safoh <safoh@student.codam.nl>             //   \ \ __| | | \ \/ /    #
#                                                  (|     | )|_| |_| |>  <     #
#    Created: 2022/03/11 16:38:26 by safoh        /'\_   _/`\__|\__,_/_/\_\    #
#    Updated: 2022/03/12 17:26:44 by safoh        \___)=(___/                  #
#                                                                              #
# **************************************************************************** #

# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/$USER/.brew/opt/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/$USER/.brew/opt/fzf/bin"
fi

# Man path
# --------
if [[ ! "$MANPATH" == */usr/local/opt/fzf/man* && -d "/usr/local/opt/fzf/man" ]]; then
  export MANPATH="$MANPATH:/usr/local/opt/fzf/man"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/$USER/.brew/opt/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/$USER/.brew/opt/fzf/shell/key-bindings.zsh"
