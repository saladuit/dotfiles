" **************************************************************************** "
"                                                                              "
"                                                     .--.  _                  "
"    format-settings.vim                                :+:      :+:    :+:    "
"                                                    |:_/ || |_ _   ___  __    "
"    By: safoh <safoh@student.codam.nl>             //   \ \ __| | | \ \/ /    "
"                                                  (|     | )|_| |_| |>  <     "
"    Created: 2022/09/26 14:54:59 by safoh        /'\_   _/`\__|\__,_/_/\_\    "
"    Updated: 2023/02/07 09:07:15 by saladin          ###   ########.fr        "
"                                                                              "
" **************************************************************************** "



let s:uname = system("uname -s")
" let s:brew_prefix = system("brew config | grep HOMEBREW_PREFIX | cut -d ' ' -f2") . '/Cellar/clang-format/15.0.7/share/clang/clang-format.py'
" let s:brew_prefix = substitute(s:brew_prefix, "\n", "", "")
" ./opt/homebrew/Cellar/clang-format/15.0.7/share/clang/clang-format.py
if s:uname == "Darwin\n"

	map <C-K> :pyf /opt/homebrew/Cellar/clang-format/15.0.7/share/clang/clang-format.py<cr>
	imap <C-K> <c-o>:pyf /opt/homebrew/Cellar/clang-format/15.0.7/share/clang/clang-format.py<cr>

	function! Formatonsave()
		let l:formatdiff = 1
		pyf /opt/homebrew/Cellar/clang-format/15.0.7/share/clang/clang-format.py
	endfunction
	autocmd BufWritePre *.hpp,*.cpp call Formatonsave()

else
	map <C-K> :pyf /opt/lib/llvm-12.0/share/clang/clang-format.py<cr>
	imap <C-K> <c-o>:pyf /opt/lib/llvm-12.0/share/clang/clang-format.py<cr>
	"	function! Formatonsave()
	"		let l:formatdiff = 1
	"		pyf /opt/lib/llvm-12.0/share/clang/clang-format.py
	"	endfunction
	"	autocmd BufWritePre *.hpp,*.cpp call Formatonsave()
endif
