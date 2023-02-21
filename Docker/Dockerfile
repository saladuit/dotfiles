FROM archlinux/archlinux:latest
RUN pacman -Syu gcc clang cmake make git gdb valgrind man-pages less base-devel openssh --noconfirm
ENV DEBUGINFOD_URLS="https://debuginfod.archlinux.org"
RUN pacman -Syu --noconfirm lua nodejs npm lazygit bottom python3 go neovim ripgrep unzip wget
RUN  git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
  # Uncomment the line below and replace the link with your user config repo to load a user config
  # git clone https://github.com/username/AstroNvim_user ~/.config/nvim/lua/user
RUN nvim --headless -c "autocmd User PackerComplete quitall"
RUN nvim --headless +"MasonInstall clangd codelldb" +qa 
