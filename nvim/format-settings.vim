map <C-K> :pyf ~/.brew/Cellar/clang-format/14.0.6/share/clang/clang-format.py<cr>
imap <C-K> <c-o>:pyf ~/.brew/Cellar/clang-format/14.0.6/share/clang/clang-format.py<cr>
function! Formatonsave()
  let l:formatdiff = 1
  pyf ~/.brew/Cellar/clang-format/14.0.6/share/clang/clang-format.py
endfunction
autocmd BufWritePre *.hpp,*.cpp call Formatonsave()
