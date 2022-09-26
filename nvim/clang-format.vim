function! Formatonsave()
  let l:formatdiff = 1
  pyf ~/.brew/Cellar/llvm/15.0.0/share/clang/clang-format.py
endfunction
autocmd BufWritePre *.hpp,*.cpp call Formatonsave()
