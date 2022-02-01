" **************************************************************************** "
"                                                                              "
"                                                     .--.  _                  "
"    .vimrc                                                               0    "
"                                                    |:_/ || |_ _   ___  __    "
"    By: safoh <safoh@student.codam.nl>             //   \ \ __| | | \ \/ /    "
"                                                  (|     | )|_| |_| |>  <     "
"    Created: 2022/02/01 16:05:46 by safoh        /'\_   _/`\__|\__,_/_/\_\    "
"    Updated: 2022/02/01 16:22:28 by safoh        \___)=(___/                  "
"                                                                              "
" **************************************************************************** "

"Activate indentation
filetype off
filetype plugin indent on
set smartindent

"Non-expanded, 4-wide tabulations
set tabstop=4
set shiftwidth=4
set noexpandtab

"Disable vi-compatibility
set nocompatible

"Real-world encoding
set encoding=utf-8

"Interpret modelines in files
set modelines=1

"Do not abandon buffers
set hidden

"Don't botehr throttling tty
set ttyfast

"More useful backspace behavior
set backspace=indent,eol,start

"Use statusbar on all windows
set laststatus=2

"Better search
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch

"Prevent backups when editing systmem files
au BufWrite /private/tmp/crontab.* set nowritebackup
au BufWrite /private/etc/pw.* set nowritebackup

"Source user configuration
if filereadable(expand("~/.myvimrc"))
	source ~/.myvimrc
endif
"if filereadable(expand("~/.vimrcsafoh"))
"	source ~/.vimrcsafoh
"endif
"csteenvo op slack ff doorsturen
