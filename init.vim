" **************************************************************************** "
"                                                                              "
"                                                     .--.  _                  "
"    init.vim                                        |o_o || |                 "
"                                                    |:_/ || |_ _   ___  __    "
"    By: marvin <marvin@42.fr>                      //   \ \ __| | | \ \/ /    "
"                                                  (|     | )|_| |_| |>  <     "
"    Created: 2022/02/11 17:12:45 by marvin       /'\_   _/`\__|\__,_/_/\_\    "
"    Updated: 2022/02/11 19:36:52 by marvin       \___)=(___/                  "
"                                                                              "
" **************************************************************************** "

"Plug Plugins"
call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'vim-airline/vim-airline'
"Plug 'simnalamburt/vim-mundo' not working at the moment
Plug 'pbondoer/vim-42header'
Plug 'voldikss/vim-floaterm'
Plug 'neoclide/coc.nvim' "echt nog een keer induiken
Plug 'jiangmiao/auto-pairs'
"NerdTree
Plug 'scrooloose/NERDTree'
Plug 'preservim/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
"Syntastic
Plug 'vim-syntastic/syntastic'
"Rainbow
Plug 'frazrepo/vim-rainbow'
call plug#end()

"NerdTree"
autocmd BufWinEnter * silent NERDTreeMirror
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let g:ctrlp_open_new_file='r'
let g:ctrlp_switch_buffer = 'Et'
let NERDTreeMapOpenInTab='<ENTER>'
let NERDTreeMapActivateNode='<SPACE>'
let g:airline#extensions#tabline#enabled = 1
let NERDTreeShowLineNumbers=1

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Rainbow
let g:rainbow_active = 1

"Mundo
set undofile						"for undo history tree"
set undodir=~/.vim/undo				"for undo history tree"

"auto-pairs
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

"Coc.nvim
set nobackup						"prevents vim from creating backup files"
set nowritebackup					"other half of above setting"
set cmdheight=2						"fix press enter to continue"
set updatetime=300					"Faster Updating"
set shortmess+=c					"Fixes something with completion menu"·
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"Source Custom Vim Settings"
so ~/.vimrc
