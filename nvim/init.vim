" **************************************************************************** "
"                                                                              "
"                                                     .--.  _                  "
"    init.vim                                        |o_o || |                 "
"                                                    |:_/ || |_ _   ___  __    "
"    By: marvin <marvin@42.fr>                      //   \ \ __| | | \ \/ /    "
"                                                  (|     | )|_| |_| |>  <     "
"    Created: 2022/02/11 17:12:45 by marvin       /'\_   _/`\__|\__,_/_/\_\    "
"    Updated: 2022/09/26 12:11:46 by safoh        \___)=(___/                  "
"                                                                              "
" **************************************************************************** "

call plug#begin(expand($NVIM_DATA))
	Plug 'pbondoer/vim-42header'
call plug#end()

"Source Custom Vim Settings"
	so ~/.vimrc
