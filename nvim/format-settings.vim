if has("macunix")
map <C-K> :pyf ~/.brew/Cellar/clang-format/14.0.6/share/clang/clang-format.py<cr>
imap <C-K> <c-o>:pyf ~/.brew/Cellar/clang-format/14.0.6/share/clang/clang-format.py<cr>
endif

if has("unix")
map <C-K> :pyf /opt/lib/llvm-12.0/share/clang/clang-format.py<cr>
imap <C-K> <c-o>:pyf /opt/lib/llvm-12.0/share/clang/clang-format.py<cr>
endif
