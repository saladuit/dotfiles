" **************************************************************************** "
"                                                                              "
"                                                     .--.  _                  "
"    init.vim                                        |o_o || |                 "
"                                                    |:_/ || |_ _   ___  __    "
"    By: marvin <marvin@42.fr>                      //   \ \ __| | | \ \/ /    "
"                                                  (|     | )|_| |_| |>  <     "
"    Created: 2022/02/11 17:12:45 by marvin       /'\_   _/`\__|\__,_/_/\_\    "
"    Updated: 2022/02/17 09:58:30 by marvin       \___)=(___/                  "
"                                                                              "
" **************************************************************************** "

call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'pbondoer/vim-42header'
call plug#end()

"Source Custom Vim Settings"
	so ~/.vimrc
