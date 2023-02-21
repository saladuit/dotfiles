FROM archlinux/archlinux:latest
RUN pacman -Syu --noconfirm
RUN pacman -Syu gdb valgrind --noconfirm
RUN pacman -Syu gstreamer gst-plugins-bad gst-plugins-base gst-plugins-good meson ninja gcc cmake git --noconfirm
RUN pacman -Syu pkg-config --noconfirm
ENV DEBUGINFOD_URLS="https://debuginfod.archlinux.org"
RUN pacman -Syu --noconfirm lua nodejs npm lazygit bottom python3 go neovim ripgrep
RUN  git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
  # Uncomment the line below and replace the link with your user config repo to load a user config
  # git clone https://github.com/username/AstroNvim_user ~/.config/nvim/lua/user
RUN nvim --headless -c "autocmd User PackerComplete quitall"
