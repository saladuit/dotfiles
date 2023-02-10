" **************************************************************************** "
"                                                                              "
"                                                     .--.  _                  "
"    format-settings.vim                             |o_o || |                 "
"                                                    |:_/ || |_ _   ___  __    "
"    By: safoh <safoh@student.codam.nl>             //   \ \ __| | | \ \/ /    "
"                                                  (|     | )|_| |_| |>  <     "
"    Created: 2022/09/26 14:54:59 by safoh        /'\_   _/`\__|\__,_/_/\_\    "
"    Updated: 2023/02/10 12:56:55 by safoh        \___)=(___/                  "
"                                                                              "
" **************************************************************************** "



let s:uname = system("uname -s")
if s:uname == "Darwin\n"

	map <C-K> :pyf ~/.brew/Cellar/clang-format/15.0.7/share/clang/clang-format.py<cr>
	imap <C-K> <c-o>:pyf ~/.brew/Cellar/clang-format/15.0.7/share/clang/clang-format.py<cr>
	function! Formatonsave()
		let l:formatdiff = 1
		pyf ~/.brew/Cellar/clang-format/15.0.7/share/clang/clang-format.py
	endfunction
	autocmd BufWritePre *.c,*.hpp,*.cpp call Formatonsave()

else
	"	map <C-K> :pyf /opt/lib/llvm-12.0/share/clang/clang-format.py<cr>
	"	imap <C-K> <c-o>:pyf /opt/lib/llvm-12.0/share/clang/clang-format.py<cr>
	"	function! Formatonsave()
	"		let l:formatdiff = 1
	"		pyf /opt/lib/llvm-12.0/share/clang/clang-format.py
	"	endfunction
	"	autocmd BufWritePre *.hpp,*.cpp call Formatonsave()
endif
