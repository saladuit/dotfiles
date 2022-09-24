" **************************************************************************** "
""                                                                              "
"                                                     .--.  _                  "
"    settings.vim                                    |o_o || |                 "
"                                                    |:_/ || |_ _   ___  __    "
"    By: safoh <safoh@student.codam.nl>             //   \ \ __| | | \ \/ /    "
"                                                  (|     | )|_| |_| |>  <     "
"    Created: 2022/02/01 16:06:33 by safoh        /'\_   _/`\__|\__,_/_/\_\    "
"    Updated: 2022/09/24 15:34:57 by safoh        \___)=(___/                  "
"                                                                              "
" **************************************************************************** "

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"Plug Plugins
call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'pbondoer/vim-42header'
"Rainbow
Plug 'frazrepo/vim-rainbow'
"Gruvbox
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
"Plug 'cacharle/c_formatter_42.vim'
call plug#end()

"basic
syntax on
colorscheme gruvbox
color gruvbox
set rnu							"enables reslative numberlines"
set showcmd							"always shows the commandline"
set wildmenu"better completion"
set conceallevel=0					"fixes markdown files"
set spelllang=en_uk					"set language for spellchecking"
set confirm							"asks to save when closing a file"
set nowrap							"display lines longer than the width as one line"
set smarttab						"tt will look at the tab space"

"editing
set autoindent						"automatically indents based on the previous line"
set backspace=indent,eol,start
set clipboard=unnamedplus			"clipboard management"
set scrolloff=5						"keep 3 lines visible above/below the cursor when scrolling"
set sidescrolloff=7					"keep 7 characters visible to the left/right of the cursor when scrolling"
set sidescroll=1					"scroll left/right one character at a time"
set complete

"visual
set background=dark					"set the background color
set cursorline						"shows a line under the active line"
set ruler							"shows cursor coordinates in the corner"
set pumheight=10					"smaller popup menus"
set splitbelow						"split below if vertical"
set splitright						"split to the right if horizontal"
set t_Co=256						"sets amount of colors"
set showtabline=0					"show tabs if multiple buffers opened"
set noshowmode						"Removes the lower line since it is in our powerbar"

"advanced
set dir=~/tmp,/tmp					"store swap files in $HOME/tmp or /tmp, whichever is available"

"Buffer switching
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"Rainbow
let g:rainbow_active = 1

if filereadable(expand("~/.config/nvim/coc-settings.vim"))
	source ~/.config/nvim/coc-settings.vim
endif

if filereadable(expand("~/.config/nvim/netrw-settings.vim"))
	source ~/.config/nvim/netrw-settings.vim
endif

if filereadable(expand("~/.config/nvim/format-settings.vim"))
	source ~/.config/nvim/format-settings.vim
endif
