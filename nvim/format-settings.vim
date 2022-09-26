" **************************************************************************** "
"                                                                              "
"                                                     .--.  _                  "
"    format-settings.vim                             |o_o || |                 "
"                                                    |:_/ || |_ _   ___  __    "
"    By: safoh <safoh@student.codam.nl>             //   \ \ __| | | \ \/ /    "
"                                                  (|     | )|_| |_| |>  <     "
"    Created: 2022/09/26 14:54:59 by safoh        /'\_   _/`\__|\__,_/_/\_\    "
"    Updated: 2022/09/26 14:55:02 by safoh        \___)=(___/                  "
"                                                                              "
" **************************************************************************** "

if has("macunix")
map <C-K> :pyf ~/.brew/Cellar/clang-format/14.0.6/share/clang/clang-format.py<cr>
imap <C-K> <c-o>:pyf ~/.brew/Cellar/clang-format/14.0.6/share/clang/clang-format.py<cr>
endif

if has("unix")
map <C-K> :pyf /opt/lib/llvm-12.0/share/clang/clang-format.py<cr>
imap <C-K> <c-o>:pyf /opt/lib/llvm-12.0/share/clang/clang-format.py<cr>
endif
