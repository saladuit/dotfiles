" **************************************************************************** "
"                                                                              "
"                                                     .--.  _                  "
"    .vimrc                                          |o_o || |                 "
"                                                    |:_/ || |_ _   ___  __    "
"    By: safoh <safoh@student.codam.nl>             //   \ \ __| | | \ \/ /    "
"                                                  (|     | )|_| |_| |>  <     "
"    Created: 2022/06/23 13:20:29 by safoh        /'\_   _/`\__|\__,_/_/\_\    "
"    Updated: 2022/09/26 17:40:08 by safoh            ###   ########.fr        "
"                                                                              "
" **************************************************************************** "

let data_dir = '~/.data/nvim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

if filereadable(expand('~/repos/dotfiles/nvim/settings.vim'))
	source ~/repos/dotfiles/nvim/settings.vim
endif

"Activate indentation
filetype off
filetype plugin indent on
set smartindent

"Non-expanded, 4-wide tabulations
set tabstop=4
set shiftwidth=4
set noexpandtab

"Disable vi-compatibility
"set nocompatible

"Real-world encoding
set encoding=utf-8

"Interpret modelines in files
"set modelines=1

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

let s:asciiart = [
			\"    .--.  _              ",
			\"   |o_o || |             ",
			\"   |:_/ || |_ _   ___  __",
	 		\"  //   \\ \\ __| | | \\ \\/ /",
			\" (|     | )|_| |_| |>  < ",
			\"/\'\\_   _/`\\__|\\__,_/_/\\_\\",
			\"\\___)=(___/              "
			\]

"Source user configuration
"if filereadable(expand('~/.myvimrc'))
"	source ~/.myvimrc
"endif
